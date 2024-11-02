.class public final Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelPolicy;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->this$0:Lcom/android/systemui/shade/SecPanelPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->mMainHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "SecPanelPolicy"

    .line 2
    .line 3
    const-string p2, "onReceive DisplayManager.SEM_ACTION_SET_SCREEN_RATIO_VALUE"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->mMainHandler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance p2, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0xa

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
