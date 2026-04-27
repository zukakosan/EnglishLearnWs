# check-daily-log.ps1
# Stop フック: 英語学習の活動があった日にログが未作成なら停止をブロックする

$today = Get-Date -Format "yyyy-MM-dd"
$todayShort = Get-Date -Format "yyyyMMdd"

# 今日の学習活動を検出（日記、単語リスト、コロケーション）
$activityPaths = @(
    "diary/${todayShort}.md",
    "words/${today}.md",
    "collocations/${today}-col.md"
)

$activityDetected = $false
foreach ($path in $activityPaths) {
    if (Test-Path $path) {
        $activityDetected = $true
        break
    }
}

if (-not $activityDetected) {
    # 学習活動なし → そのまま終了を許可
    exit 0
}

# 今日の学習ログが存在するか確認（history/YYYY-MM-DD*.md）
$historyDir = "history"
if (-not (Test-Path $historyDir)) {
    New-Item -ItemType Directory -Path $historyDir -Force | Out-Null
}

$logFiles = Get-ChildItem -Path $historyDir -Filter "${today}*.md" -ErrorAction SilentlyContinue

if ($logFiles) {
    # ログあり → 終了を許可
    exit 0
}

# ログなし → 停止をブロックして作成を促す
$output = @{
    stopReason    = "daily_log_missing"
    systemMessage = @"
【学習ログ未作成】今日（${today}）は英語学習の活動が検出されましたが、学習ログがまだありません。
セッションを終了する前に history/${today}.md を作成してください。

記録すべき内容:
- 今日学習したフレーズとその結果
- テストのスコア（実施した場合）
- 日記レビューの要点（実施した場合）
- 気づきや復習ポイント
"@
} | ConvertTo-Json -Compress

Write-Output $output
exit 2
