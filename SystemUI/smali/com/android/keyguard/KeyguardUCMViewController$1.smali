.class public final Lcom/android/keyguard/KeyguardUCMViewController$1;
.super Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVerifyPinResponse(IILandroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$1;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    .line 2
    .line 3
    sget-object v1, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    .line 8
    .line 9
    new-instance v7, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, v7

    .line 13
    move-object v2, p0

    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move-object v5, p3

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardUCMViewController$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Thread;IILandroid/os/Bundle;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
