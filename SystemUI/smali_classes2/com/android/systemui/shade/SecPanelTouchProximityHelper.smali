.class public final Lcom/android/systemui/shade/SecPanelTouchProximityHelper;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsSupportProximity:I

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mIsSupportProximity:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 14
    .line 15
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/Handler;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "SecPanelTouchProximityHelper"

    .line 2
    .line 3
    const-string p2, "ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance p2, Lcom/android/systemui/shade/SecPanelTouchProximityHelper$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/android/systemui/shade/SecPanelTouchProximityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/SecPanelTouchProximityHelper;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x1f4

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
