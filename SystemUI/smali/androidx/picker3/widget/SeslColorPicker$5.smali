.class public final Landroidx/picker3/widget/SeslColorPicker$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$5;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onColorSwatchChanged(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$5;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 7
    .line 8
    iput-boolean v0, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v2, "input_method"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 53
    .line 54
    mul-int/lit8 v2, v2, 0x64

    .line 55
    .line 56
    int-to-float v2, v2

    .line 57
    const/high16 v3, 0x437f0000    # 255.0f

    .line 58
    .line 59
    div-float/2addr v2, v3

    .line 60
    float-to-double v2, v2

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    double-to-int v2, v2

    .line 66
    iput v2, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 67
    .line 68
    iget-object v2, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 75
    .line 76
    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 86
    .line 87
    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    .line 88
    .line 89
    return-void
.end method
