.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doActionNotification()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClickExpandButton(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClickToastInWindow()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDismissEdgeWindow()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onExtendLightingDuration()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFling(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFlingDownInWindow(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onShowEdgeWindow()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwipeToastInWindow()V
    .locals 0

    .line 1
    return-void
.end method
