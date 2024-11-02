.class public Lcom/android/keyguard/clock/ImageClock;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDescFormat:Ljava/lang/String;

.field public mHourHand:Landroid/widget/ImageView;

.field public mMinuteHand:Landroid/widget/ImageView;

.field public final mTime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/ImageClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/ImageClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 5
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/ImageClock;->mDescFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 5
    .line 6
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    const/high16 v1, 0x41f00000    # 30.0f

    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    iget-object v1, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 35
    .line 36
    const/16 v2, 0xc

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-float v1, v1

    .line 43
    const/high16 v3, 0x3f000000    # 0.5f

    .line 44
    .line 45
    mul-float/2addr v1, v3

    .line 46
    add-float/2addr v1, v0

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mHourHand:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-float v0, v0

    .line 59
    const/high16 v1, 0x40c00000    # 6.0f

    .line 60
    .line 61
    mul-float/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/android/keyguard/clock/ImageClock;->mMinuteHand:Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mDescFormat:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 70
    .line 71
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a04a0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mHourHand:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v0, 0x7f0a069c

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mMinuteHand:Landroid/widget/ImageView;

    .line 25
    .line 26
    return-void
.end method
