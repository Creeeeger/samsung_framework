.class public final Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;->this$0:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
