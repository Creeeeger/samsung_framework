.class public final synthetic Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->$r8$clinit:I

    .line 9
    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/content/ComponentName;

    .line 16
    .line 17
    const-class v3, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "com.android.systemui"

    .line 24
    .line 25
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string v2, "compat_task_id"

    .line 32
    .line 33
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, p0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
