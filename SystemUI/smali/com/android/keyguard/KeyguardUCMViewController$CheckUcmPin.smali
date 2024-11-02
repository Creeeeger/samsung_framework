.class public abstract Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "KeyguardUCMPinView"

    .line 7
    .line 8
    const-string/jumbo v0, "new CheckUcmPin"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->mPin:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract onVerifyPinResponse(IILandroid/os/Bundle;)V
.end method

.method public final run()V
    .locals 8

    .line 1
    const-string v0, "KeyguardUCMPinView"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->mPin:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mverifyPIN(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)[I

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    aget v3, v2, v1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 15
    .line 16
    iget-boolean v5, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v7, "In race condition, stop unlock operation"

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 27
    .line 28
    iput-object v6, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {v4, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgeneratePassword(Lcom/android/keyguard/KeyguardUCMViewController;I)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 36
    .line 37
    iget-boolean v5, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 45
    .line 46
    iput-object v6, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 50
    .line 51
    check-cast v4, Lcom/android/keyguard/KeyguardUCMView;

    .line 52
    .line 53
    new-instance v5, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Thread;[ILandroid/os/Bundle;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    const-string v3, "Exception for verifyPIN : "

    .line 64
    .line 65
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 69
    .line 70
    sget-object v2, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 73
    .line 74
    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    .line 75
    .line 76
    new-instance v2, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Thread;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method
