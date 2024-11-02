.class public final Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipMenuControlService;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/pip/PipMenuControlService;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipMenuControlService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipMenuControlService;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 4
    .line 5
    const-string v1, "PipMenuControlService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget p0, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    .line 10
    .line 11
    const-string p0, "mPhonePipMenuController is null"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_1

    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget p1, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    .line 30
    .line 31
    const-string p1, "handle hideMenu"

    .line 32
    .line 33
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipMenuControlService;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 39
    .line 40
    new-instance v0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;I)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    sget p1, Lcom/android/wm/shell/pip/PipMenuControlService;->$r8$clinit:I

    .line 52
    .line 53
    const-string p1, "handle showMenu"

    .line 54
    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;->this$0:Lcom/android/wm/shell/pip/PipMenuControlService;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipMenuControlService;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 61
    .line 62
    new-instance v0, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;I)V

    .line 66
    .line 67
    .line 68
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method
