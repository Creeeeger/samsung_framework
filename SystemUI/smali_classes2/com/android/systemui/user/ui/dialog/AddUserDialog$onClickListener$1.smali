.class public final Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $isKeyguardShowing:Z

.field public final synthetic $userHandle:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/dialog/AddUserDialog;Landroid/os/UserHandle;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$userHandle:Landroid/os/UserHandle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$isKeyguardShowing:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const/4 p1, -0x2

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x2

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 p1, -0x3

    .line 19
    if-ne p2, p1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->dismissStack(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->this$0:Lcom/android/systemui/user/ui/dialog/AddUserDialog;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/systemui/user/ui/dialog/AddUserDialog;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 44
    .line 45
    new-instance p2, Landroid/content/Intent;

    .line 46
    .line 47
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 48
    .line 49
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$userHandle:Landroid/os/UserHandle;

    .line 53
    .line 54
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$context:Landroid/content/Context;

    .line 58
    .line 59
    iget-boolean p2, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$isKeyguardShowing:Z

    .line 60
    .line 61
    sget v0, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    .line 62
    .line 63
    new-instance v0, Landroid/content/Intent;

    .line 64
    .line 65
    const-class v1, Lcom/android/systemui/user/CreateUserActivity;

    .line 66
    .line 67
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    const/high16 v1, 0x14000000

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    const-string v1, "extra_is_keyguard_showing"

    .line 76
    .line 77
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/AddUserDialog$onClickListener$1;->$userHandle:Landroid/os/UserHandle;

    .line 81
    .line 82
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
