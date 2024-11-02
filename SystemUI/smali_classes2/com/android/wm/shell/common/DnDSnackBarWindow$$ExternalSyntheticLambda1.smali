.class public final synthetic Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DnDSnackBarWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mCallbacks:Lcom/android/wm/shell/common/DnDSnackBarWindow$SnackBarCallbacks;

    .line 4
    .line 5
    check-cast p1, Lcom/android/wm/shell/common/DnDSnackBarController;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, ":settings:fragment_args_key"

    .line 16
    .line 17
    const-string v2, "multi_window_for_all_apps"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "com.samsung.settings.LABS_SETTINGS"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v2, ":settings:show_fragment_args"

    .line 33
    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/high16 v0, 0x10000000

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/wm/shell/common/DnDSnackBarController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
