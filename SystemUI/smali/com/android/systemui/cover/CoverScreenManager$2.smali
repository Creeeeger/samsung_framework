.class public final Lcom/android/systemui/cover/CoverScreenManager$2;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x3e9

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x7d0

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 19
    .line 20
    if-eqz p0, :cond_5

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 23
    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne v1, v2, :cond_1

    .line 45
    .line 46
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eq v1, v2, :cond_5

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    .line 66
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    .line 68
    and-int/lit8 v0, v0, -0x9

    .line 69
    .line 70
    const/high16 v1, 0x20000

    .line 71
    .line 72
    or-int/2addr v0, v1

    .line 73
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    .line 75
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 76
    .line 77
    const/high16 v1, 0x40000

    .line 78
    .line 79
    or-int/2addr v0, v1

    .line 80
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    .line 85
    .line 86
    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->initialize(Lcom/samsung/android/cover/CoverState;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 105
    .line 106
    iget-object v1, p1, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 107
    .line 108
    if-nez v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/cover/CoverScreenManager;->prepareVirtualDisplay()V

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 116
    .line 117
    if-nez p1, :cond_5

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager;->mHandler:Lcom/android/systemui/cover/CoverScreenManager$2;

    .line 120
    .line 121
    const-wide/16 v1, 0x12c

    .line 122
    .line 123
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_0
    return-void
.end method
