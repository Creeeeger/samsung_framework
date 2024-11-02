.class public final Landroidx/picker3/widget/SeslColorPicker$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSpectrumColorChanged(FF)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$6;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string v3, "input_method"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 45
    .line 46
    aput p1, v4, v1

    .line 47
    .line 48
    aput p2, v4, v0

    .line 49
    .line 50
    const/4 p1, 0x2

    .line 51
    const/high16 p2, 0x3f800000    # 1.0f

    .line 52
    .line 53
    aput p2, v4, p1

    .line 54
    .line 55
    iget p1, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 56
    .line 57
    invoke-static {p1, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 66
    .line 67
    mul-int/lit8 v3, v3, 0x64

    .line 68
    .line 69
    int-to-float p1, v3

    .line 70
    const/high16 p2, 0x437f0000    # 255.0f

    .line 71
    .line 72
    div-float/2addr p1, p2

    .line 73
    float-to-double p1, p1

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    double-to-int p1, p1

    .line 79
    iput p1, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 85
    .line 86
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
