.class public final Lcom/android/systemui/contrast/ContrastDialogActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final uiModeManager:Landroid/app/UiModeManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->uiModeManager:Landroid/app/UiModeManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/contrast/ContrastDialog;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->context:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->uiModeManager:Landroid/app/UiModeManager;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/android/systemui/contrast/ContrastDialogActivity;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/contrast/ContrastDialog;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
