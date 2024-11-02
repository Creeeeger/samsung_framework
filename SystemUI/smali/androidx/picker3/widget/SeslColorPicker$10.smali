.class public final Landroidx/picker3/widget/SeslColorPicker$10;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    return p2

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setSelected(Z)V

    .line 24
    .line 25
    .line 26
    return p2

    .line 27
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    return v0
.end method
