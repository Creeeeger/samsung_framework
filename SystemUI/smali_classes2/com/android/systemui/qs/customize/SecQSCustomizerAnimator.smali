.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActiveContents:Lkotlin/collections/builders/ListBuilder;

.field public final mAvailableAreaContents:Lkotlin/collections/builders/ListBuilder;

.field public final mRemoveIconId:I

.field public final mView:Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

.field public final startY:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerBase;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mView:Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 5
    .line 6
    sget v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->REMOVE_ICON_ID:I

    .line 7
    .line 8
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mRemoveIconId:I

    .line 9
    .line 10
    const v0, 0x7f0a084c

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-double v0, v0

    .line 28
    const-wide/high16 v2, 0x3fb0000000000000L    # 0.0625

    .line 29
    .line 30
    mul-double/2addr v0, v2

    .line 31
    double-to-int v0, v0

    .line 32
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->startY:I

    .line 33
    .line 34
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f0a0860

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    const v1, 0x7f0a0844

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    const v1, 0x7f0a0846

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const v1, 0x7f0a084b

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    const v1, 0x7f0a0394

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mAvailableAreaContents:Lkotlin/collections/builders/ListBuilder;

    .line 93
    .line 94
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const v1, 0x7f0a0850

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    const v1, 0x7f0a0840

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    const v1, 0x7f0a0841

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const v1, 0x7f0a0843

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v0, p1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mActiveContents:Lkotlin/collections/builders/ListBuilder;

    .line 143
    .line 144
    return-void
.end method
