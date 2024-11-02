.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->requestHideEffectView()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 30
    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->onFinishAnimation()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->hide()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->show()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 53
    .line 54
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "EdgeLightingTouchableRect="

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 70
    .line 71
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ","

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 84
    .line 85
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 96
    .line 97
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mTouchableRec:Landroid/graphics/Rect;

    .line 108
    .line 109
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_0
    return-void
.end method
