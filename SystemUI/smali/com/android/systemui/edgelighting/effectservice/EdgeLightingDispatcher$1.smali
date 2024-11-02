.class public final Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;
.super Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClickedToast()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onFlingDownedToast(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onFlingDownInWindow(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onStarted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onShowEdgeWindow()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onStopped()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onDismissEdgeWindow()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onSwipedToast()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;->this$0:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onSwipeToastInWindow()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
