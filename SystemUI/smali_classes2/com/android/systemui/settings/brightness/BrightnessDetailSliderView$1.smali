.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const p2, 0x7f130f0d

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeEnter:Z

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->-$$Nest$misAutoChecked(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    .line 65
    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const p2, 0x7f130f0e

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    .line 82
    .line 83
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 86
    .line 87
    .line 88
    :cond_4
    return v1
.end method
