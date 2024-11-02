.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;


# static fields
.field public static final MARGIN_ADJUSTED_VIEWS:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x1020454

    .line 2
    .line 3
    .line 4
    const v1, 0x1020451

    .line 5
    .line 6
    .line 7
    const v2, 0x1020621

    .line 8
    .line 9
    .line 10
    const v3, 0x102022a

    .line 11
    .line 12
    .line 13
    const v4, 0x1020016

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 4

    .line 1
    const p0, 0x10203b7

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const p1, 0x10204fd

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    .line 22
    const/4 p4, 0x1

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x102060e

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    move v1, p4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v1, v0

    .line 46
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const v3, 0x1020614

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    move-object v3, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_1
    if-eqz p3, :cond_3

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    move-object v2, v3

    .line 77
    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    const/16 v2, 0x8

    .line 81
    .line 82
    if-eqz p3, :cond_5

    .line 83
    .line 84
    move v3, v0

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    move v3, v2

    .line 87
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    if-eqz p1, :cond_f

    .line 91
    .line 92
    if-nez v1, :cond_6

    .line 93
    .line 94
    if-nez p3, :cond_7

    .line 95
    .line 96
    :cond_6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-eqz p0, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    move p4, v0

    .line 104
    :goto_3
    if-eqz p4, :cond_8

    .line 105
    .line 106
    move v2, v0

    .line 107
    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    sget-object p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    .line 111
    .line 112
    :goto_4
    const/4 p1, 0x5

    .line 113
    if-ge v0, p1, :cond_f

    .line 114
    .line 115
    aget p1, p0, v0

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_9

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    instance-of p3, p1, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 125
    .line 126
    if-eqz p3, :cond_a

    .line 127
    .line 128
    check-cast p1, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 129
    .line 130
    invoke-virtual {p1, p4}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImage(Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_a
    if-eqz p4, :cond_b

    .line 135
    .line 136
    const p3, 0x1020611

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_b
    const p3, 0x1020610

    .line 141
    .line 142
    .line 143
    :goto_5
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    check-cast p3, Ljava/lang/Integer;

    .line 148
    .line 149
    if-nez p3, :cond_c

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    invoke-static {p3, v1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    instance-of v1, p1, Landroid/view/NotificationHeaderView;

    .line 169
    .line 170
    if-eqz v1, :cond_d

    .line 171
    .line 172
    check-cast p1, Landroid/view/NotificationHeaderView;

    .line 173
    .line 174
    invoke-virtual {p1, p3}, Landroid/view/NotificationHeaderView;->setTopLineExtraMarginEnd(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 183
    .line 184
    if-eqz v2, :cond_e

    .line 185
    .line 186
    move-object v2, v1

    .line 187
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    .line 189
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .line 194
    .line 195
    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_f
    return-void
.end method
