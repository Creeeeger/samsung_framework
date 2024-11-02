.class public Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public logOnClickTimeButton(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v0, 0xa3

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public logOnConditionSelected()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v0, 0xa4

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public logOnEnableZenModeForever()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v0, 0x4eb

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public logOnEnableZenModeUntilAlarm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v0, 0x4ed

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public logOnEnableZenModeUntilCountdown()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v0, 0x4ec

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
