.class public final Lcom/android/systemui/screenshot/ScreenshotController$13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic val$bundle:Landroid/os/Bundle;

.field public final synthetic val$finisher:Ljava/util/function/Consumer;

.field public final synthetic val$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

.field public final synthetic val$screenshotData:Lcom/android/systemui/screenshot/ScreenshotData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/Bundle;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$bundle:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$screenshotData:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$finisher:Ljava/util/function/Consumer;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-eq v0, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    float-to-int p0, p0

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    float-to-int p2, p2

    .line 27
    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v2, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 32
    .line 33
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-object v2, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 44
    .line 45
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 46
    .line 47
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iget-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 56
    .line 57
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    iget-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 68
    .line 69
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 70
    .line 71
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 78
    .line 79
    .line 80
    :cond_1
    return v1

    .line 81
    :cond_2
    const/16 p2, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 87
    .line 88
    iget-object v0, p2, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 91
    .line 92
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 114
    .line 115
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$13$1;

    .line 116
    .line 117
    invoke-direct {v2, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotController$13$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController$13;Landroid/graphics/Rect;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    :cond_3
    const/4 p0, 0x0

    .line 124
    iput-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 125
    .line 126
    iput-object p0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 127
    .line 128
    return v1

    .line 129
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    float-to-int p0, p0

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    float-to-int p2, p2

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    new-instance v0, Landroid/graphics/Point;

    .line 143
    .line 144
    invoke-direct {v0, p0, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mStartPoint:Landroid/graphics/Point;

    .line 148
    .line 149
    new-instance v0, Landroid/graphics/Rect;

    .line 150
    .line 151
    invoke-direct {v0, p0, p2, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p1, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;->mSelectionRect:Landroid/graphics/Rect;

    .line 155
    .line 156
    return v1
.end method
