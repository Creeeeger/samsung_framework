.class public abstract Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final mPuk:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->mPuk:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->mPin:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract onVerifyPukResponse(IILandroid/os/Bundle;)V
.end method

.method public final run()V
    .locals 8

    .line 1
    const-string v0, "KeyguardUCMPinView"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->mPuk:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->mPin:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2, v3, v4}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mverifyPUK(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)[I

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aget v3, v2, v3

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 18
    .line 19
    iget-boolean v5, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v7, "In race condition, stop unlock operation"

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    :try_start_1
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 30
    .line 31
    iput-object v6, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-static {v4, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgeneratePassword(Lcom/android/keyguard/KeyguardUCMViewController;I)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 39
    .line 40
    iget-boolean v5, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    .line 41
    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 48
    .line 49
    iput-object v6, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    .line 54
    check-cast v4, Lcom/android/keyguard/KeyguardUCMView;

    .line 55
    .line 56
    new-instance v5, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Thread;[ILandroid/os/Bundle;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    const-string v3, "RemoteException for supplyPukReportResult:"

    .line 67
    .line 68
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 72
    .line 73
    sget-object v2, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 76
    .line 77
    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    .line 78
    .line 79
    new-instance v2, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Thread;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method
