.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;

    .line 2
    .line 3
    sget-object p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;->KEY_HELP_TEXT_VISIBILITY:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    .line 8
    .line 9
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController$mDevicePolicyReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaViewController;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
