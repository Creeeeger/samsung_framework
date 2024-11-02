.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationKey:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, p1}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickExpandButton(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->-$$Nest$mdismissInternal(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$3;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 22
    .line 23
    sget-boolean p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mBlockNotiTouch_for_NA:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->requestHideEffectView()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->disappear()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, " remove edge  tsp  rect "

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mAODManager:Lcom/samsung/android/aod/AODManager;

    .line 47
    .line 48
    const/4 v2, -0x1

    .line 49
    const/4 v3, -0x1

    .line 50
    const/4 v4, -0x1

    .line 51
    const/4 v5, -0x1

    .line 52
    const-string v6, "brief_popup"

    .line 53
    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->unregisterAODReceiver()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
