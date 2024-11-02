.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onUserSwitchComplete : "

    .line 2
    .line 3
    .line 4
    const-string v1, "S.S.N."

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$mUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateNotiShowBlocked()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentUserId:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateBModeStatus()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSamsungAccount()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
