.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

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
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0b009d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    const/4 v1, -0x2

    .line 26
    const-string v2, "accessibility_display_magnification_scale"

    .line 27
    .line 28
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$5;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    .line 39
    sub-float/2addr p1, v0

    .line 40
    div-float/2addr p1, v0

    .line 41
    float-to-int p1, p1

    .line 42
    const/4 v0, 0x0

    .line 43
    if-gez p1, :cond_0

    .line 44
    .line 45
    move p1, v0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mZoomSeekbar:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-lez p1, :cond_1

    .line 57
    .line 58
    move v3, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v3, v0

    .line 61
    :goto_0
    invoke-static {v1, v3}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-ge p1, p0, :cond_2

    .line 73
    .line 74
    move v0, v2

    .line 75
    :cond_2
    invoke-static {v1, v0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
