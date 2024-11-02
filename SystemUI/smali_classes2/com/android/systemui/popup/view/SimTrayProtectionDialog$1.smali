.class public final Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/SimTrayProtectionDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v2, 0x7f0711c7

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const v3, 0x7f0711c8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-object v3, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    mul-int/lit8 v0, v0, 0x2

    .line 72
    .line 73
    add-int/2addr v3, v0

    .line 74
    mul-int/lit8 v2, v2, 0x2

    .line 75
    .line 76
    add-int/2addr v3, v2

    .line 77
    iget-object v4, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 78
    .line 79
    iget v5, v4, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayWidth:I

    .line 80
    .line 81
    if-eq v5, v1, :cond_2

    .line 82
    .line 83
    iput v1, v4, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mDisplayWidth:I

    .line 84
    .line 85
    if-ge v1, v3, :cond_1

    .line 86
    .line 87
    iget-object v3, v4, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sub-int/2addr v1, v0

    .line 94
    sub-int/2addr v1, v2

    .line 95
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, v4, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const v2, 0x7f0711c3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    .line 121
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog$1;->this$0:Lcom/android/systemui/popup/view/SimTrayProtectionDialog;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayProtectionDialog;->mBodyImage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 126
    .line 127
    .line 128
    :cond_2
    return-void
.end method
