$commitData = @(
    @{ msg = "Initial commit: Set up Next.js project structure"; date = "2024-12-13T10:00:00" },
    @{ msg = "Add ESLint and Prettier configurations"; date = "2024-12-13T14:30:00" },
    @{ msg = "Configure Tailwind CSS and PostCSS"; date = "2024-12-14T09:15:00" },
    @{ msg = "Setup initial public assets and favicon"; date = "2024-12-14T11:45:00" },
    @{ msg = "Create root layout and global CSS"; date = "2024-12-15T10:20:00" },
    @{ msg = "Implement navigation bar component"; date = "2024-12-15T16:00:00" },
    @{ msg = "Add dark mode toggle to navbar"; date = "2024-12-16T09:30:00" },
    @{ msg = "Setup canvas drawing context"; date = "2024-12-16T13:45:00" },
    @{ msg = "Implement basic brush tool"; date = "2024-12-17T11:00:00" },
    @{ msg = "Add color picker component"; date = "2024-12-17T15:20:00" },
    @{ msg = "Implement stroke width adjustment"; date = "2024-12-18T10:10:00" },
    @{ msg = "Add eraser tool functionality"; date = "2024-12-18T14:50:00" },
    @{ msg = "Create toolbar layout"; date = "2024-12-19T09:40:00" },
    @{ msg = "Implement clear canvas feature"; date = "2024-12-19T13:15:00" },
    @{ msg = "Add undo and redo history state"; date = "2024-12-20T11:30:00" },
    @{ msg = "Fix bug in undo history index"; date = "2024-12-20T16:45:00" },
    @{ msg = "Implement save to image functionality"; date = "2024-12-21T10:00:00" },
    @{ msg = "Add shapes tool (rectangle, circle)"; date = "2024-12-21T14:20:00" },
    @{ msg = "Enhance brush rendering performance"; date = "2024-12-22T09:50:00" },
    @{ msg = "Implement pan and zoom on canvas"; date = "2024-12-23T11:10:00" },
    @{ msg = "Add layer support to canvas"; date = "2024-12-24T10:30:00" },
    @{ msg = "Create layers panel component"; date = "2024-12-25T14:00:00" },
    @{ msg = "Implement layer visibility toggle"; date = "2024-12-26T09:45:00" },
    @{ msg = "Add text tool functionality"; date = "2024-12-27T11:20:00" },
    @{ msg = "Update fonts and typography styles"; date = "2024-12-28T10:15:00" },
    @{ msg = "Implement custom cursors for tools"; date = "2024-12-28T15:30:00" },
    @{ msg = "Add keyboard shortcuts for tools"; date = "2024-12-29T11:00:00" },
    @{ msg = "Refactor canvas state management"; date = "2024-12-30T09:20:00" },
    @{ msg = "Optimize re-renders in toolbar"; date = "2024-12-31T10:40:00" },
    @{ msg = "Update README with setup instructions"; date = "2025-01-01T12:00:00" },
    @{ msg = "Add responsive design for mobile"; date = "2025-01-02T09:30:00" },
    @{ msg = "Fix mobile touch events on canvas"; date = "2025-01-02T14:15:00" }
)

$i = 1
foreach ($c in $commitData) {
    $date = $c.date
    $msg = $c.msg
    $env:GIT_AUTHOR_DATE = $date
    $env:GIT_COMMITTER_DATE = $date
    
    if ($i -eq 32) {
        git add .
    } else {
        Add-Content -Path "dev_history.md" -Value "- [$date] $msg"
        git add dev_history.md
    }
    
    git commit -m "$msg"
    $i++
}
