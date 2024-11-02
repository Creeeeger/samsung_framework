.class public Lcom/android/systemui/statusbar/policy/SmartReplyView;
.super Landroid/view/ViewGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;
    }
.end annotation


# static fields
.field public static final DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

.field public static final MEASURE_SPEC_ANY_LENGTH:I


# instance fields
.field public final mBreakIterator:Ljava/text/BreakIterator;

.field public mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

.field public mCurrentBackgroundColor:I

.field public mCurrentRippleColor:I

.field public mCurrentTextColor:I

.field public mDidHideSystemReplies:Z

.field public final mHeightUpperLimit:I

.field public mLastDispatchDrawTime:J

.field public mLastDrawChildTime:J

.field public mLastMeasureTime:J

.field public mMaxNumActions:I

.field public mMaxSqueezeRemeasureAttempts:I

.field public mMinNumSystemGeneratedReplies:I

.field public mSmartRepliesGeneratedByAssistant:Z

.field public mSmartReplyContainer:Landroid/view/View;

.field public final mSpacing:I

.field public mTotalSqueezeRemeasureAttempts:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sput v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const v2, 0x7f071213

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    .line 17
    .line 18
    const v1, 0x7f0607ff

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 26
    .line 27
    const-class v2, Lnoticolorpicker/NotificationColorPicker;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lnoticolorpicker/NotificationColorPicker;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v0, v0, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const v4, 0x7f060802

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const v4, 0x7f06046d

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/16 v4, 0xff

    .line 61
    .line 62
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v1}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    .line 66
    .line 67
    .line 68
    sget-object v1, Lcom/android/systemui/R$styleable;->SmartReplyView:[I

    .line 69
    .line 70
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    move v1, v0

    .line 79
    move v2, v1

    .line 80
    :goto_0
    if-ge v1, p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-ne v4, v3, :cond_0

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    if-nez v4, :cond_1

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    .line 103
    .line 104
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 105
    .line 106
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 111
    .line 112
    new-instance p1, Ljava/util/PriorityQueue;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {p1, p2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 128
    .line 129
    return-void
.end method

.method public static markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 24
    .line 25
    iget v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    iput p0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDispatchDrawTime:J

    .line 9
    .line 10
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDrawChildTime:J

    .line 18
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 9

    .line 1
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5
    .line 6
    .line 7
    const-string v0, "mMaxSqueezeRemeasureAttempts="

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "mTotalSqueezeRemeasureAttempts="

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 25
    .line 26
    .line 27
    const-string v0, "mMaxNumActions="

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 35
    .line 36
    .line 37
    const-string v0, "mSmartRepliesGeneratedByAssistant="

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 45
    .line 46
    .line 47
    const-string v0, "mMinNumSystemGeneratedReplies="

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "mHeightUpperLimit="

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 65
    .line 66
    .line 67
    const-string v0, "mDidHideSystemReplies="

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    const-string v2, "lastMeasureAge (s)="

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastMeasureTime:J

    .line 87
    .line 88
    const-wide/16 v4, 0x0

    .line 89
    .line 90
    cmp-long v6, v2, v4

    .line 91
    .line 92
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 93
    .line 94
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 95
    .line 96
    if-nez v6, :cond_0

    .line 97
    .line 98
    move v2, v7

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    sub-long v2, v0, v2

    .line 101
    .line 102
    long-to-float v2, v2

    .line 103
    div-float/2addr v2, v8

    .line 104
    :goto_0
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 105
    .line 106
    .line 107
    const-string v2, "lastDrawChildAge (s)="

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDrawChildTime:J

    .line 113
    .line 114
    cmp-long v6, v2, v4

    .line 115
    .line 116
    if-nez v6, :cond_1

    .line 117
    .line 118
    move v2, v7

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    sub-long v2, v0, v2

    .line 121
    .line 122
    long-to-float v2, v2

    .line 123
    div-float/2addr v2, v8

    .line 124
    :goto_1
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 125
    .line 126
    .line 127
    const-string v2, "lastDispatchDrawAge (s)="

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDispatchDrawTime:J

    .line 133
    .line 134
    cmp-long v4, v2, v4

    .line 135
    .line 136
    if-nez v4, :cond_2

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    sub-long/2addr v0, v2

    .line 140
    long-to-float v0, v0

    .line 141
    div-float v7, v0, v8

    .line 142
    .line 143
    :goto_2
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(F)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const-string v1, "children: num="

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 159
    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    :goto_3
    if-ge v1, v0, :cond_3

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 173
    .line 174
    const-string v4, "["

    .line 175
    .line 176
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 180
    .line 181
    .line 182
    const-string v4, "] type="

    .line 183
    .line 184
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 188
    .line 189
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const-string v4, " squeezeStatus="

    .line 193
    .line 194
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 198
    .line 199
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 200
    .line 201
    .line 202
    const-string v4, " show="

    .line 203
    .line 204
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 208
    .line 209
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 210
    .line 211
    .line 212
    const-string v4, " noShowReason="

    .line 213
    .line 214
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v3, " view="

    .line 223
    .line 224
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    instance-of v5, v3, Landroid/widget/Button;

    .line 30
    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 35
    .line 36
    if-ne v4, p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-object v0
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sget-object v2, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string v2, "childCount"

    .line 20
    .line 21
    invoke-static {v0, v2, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/Button;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    sget-object v4, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v4, "buttonText"

    .line 49
    .line 50
    invoke-static {v0, v4, v5}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string/jumbo v5, "visibility"

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v5, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/widget/Button;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string/jumbo v5, "width"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v5, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/widget/Button;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-string v5, "height"

    .line 90
    .line 91
    invoke-static {v0, v5, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/widget/Button;->getAlpha()F

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v4, "alpha"

    .line 103
    .line 104
    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const-string v3, "\n"

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 116
    .line 117
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 118
    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v3, "0x%08x"

    .line 128
    .line 129
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const-string v1, "currentTextColor"

    .line 137
    .line 138
    invoke-static {v0, v1, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 142
    .line 143
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {v0, v1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(III)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    const/4 p5, 0x1

    .line 7
    if-ne p1, p5, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p5, p3

    .line 11
    :goto_0
    sub-int/2addr p4, p2

    .line 12
    if-eqz p5, :cond_1

    .line 13
    .line 14
    iget p1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    .line 15
    .line 16
    sub-int/2addr p4, p1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget p4, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    .line 19
    .line 20
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    move p2, p3

    .line 25
    :goto_2
    if-ge p2, p1, :cond_5

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 36
    .line 37
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz p5, :cond_3

    .line 51
    .line 52
    sub-int v3, p4, v1

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v3, p4

    .line 56
    :goto_3
    add-int v4, v3, v1

    .line 57
    .line 58
    invoke-virtual {v0, v3, p3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 62
    .line 63
    add-int/2addr v1, v0

    .line 64
    if-eqz p5, :cond_4

    .line 65
    .line 66
    sub-int/2addr p4, v1

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    add-int/2addr p4, v1

    .line 69
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const v2, 0x7fffffff

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_1
    if-ge v6, v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 36
    .line 37
    iput-boolean v5, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 38
    .line 39
    iput v5, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 40
    .line 41
    const-string/jumbo v8, "reset"

    .line 42
    .line 43
    .line 44
    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 45
    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iput v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 50
    .line 51
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const-string v6, "SmartReplyView"

    .line 58
    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    const-string v4, "Single line button queue leaked between onMeasure calls"

    .line 62
    .line 63
    invoke-static {v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 69
    .line 70
    .line 71
    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    .line 72
    .line 73
    iget v7, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    .line 74
    .line 75
    iget v8, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    .line 76
    .line 77
    add-int/2addr v7, v8

    .line 78
    invoke-direct {v4, v7, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    .line 79
    .line 80
    .line 81
    sget-object v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 82
    .line 83
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    sget-object v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 88
    .line 89
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    new-instance v9, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    new-instance v7, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const/4 v11, 0x0

    .line 113
    move v12, v5

    .line 114
    move v13, v12

    .line 115
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-eqz v14, :cond_20

    .line 120
    .line 121
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    check-cast v14, Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v16

    .line 131
    move-object/from16 v15, v16

    .line 132
    .line 133
    check-cast v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 134
    .line 135
    const/4 v5, -0x1

    .line 136
    if-eq v10, v5, :cond_3

    .line 137
    .line 138
    iget-object v5, v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 139
    .line 140
    sget-object v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 141
    .line 142
    if-ne v5, v3, :cond_3

    .line 143
    .line 144
    if-lt v12, v10, :cond_3

    .line 145
    .line 146
    const-string v3, "max-actions-shown"

    .line 147
    .line 148
    iput-object v3, v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 149
    .line 150
    move-object/from16 v18, v9

    .line 151
    .line 152
    move/from16 v19, v10

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    instance-of v3, v14, Landroid/widget/TextView;

    .line 156
    .line 157
    if-eqz v3, :cond_4

    .line 158
    .line 159
    move-object v3, v14

    .line 160
    check-cast v3, Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {v3}, Landroid/widget/TextView;->nullLayouts()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14}, Landroid/view/View;->forceLayout()V

    .line 166
    .line 167
    .line 168
    :cond_4
    sget v3, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 169
    .line 170
    invoke-virtual {v14, v3, v1}, Landroid/view/View;->measure(II)V

    .line 171
    .line 172
    .line 173
    move-object v3, v14

    .line 174
    check-cast v3, Landroid/widget/Button;

    .line 175
    .line 176
    invoke-virtual {v3}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    move-object/from16 v18, v9

    .line 181
    .line 182
    const-string v9, "Button layout is null after measure."

    .line 183
    .line 184
    if-nez v5, :cond_5

    .line 185
    .line 186
    invoke-static {v6, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_5
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Landroid/widget/Button;->getLineCount()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    move/from16 v19, v10

    .line 197
    .line 198
    const/4 v10, 0x1

    .line 199
    if-ge v5, v10, :cond_6

    .line 200
    .line 201
    const-string v3, "line-count-0"

    .line 202
    .line 203
    iput-object v3, v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    const/4 v10, 0x2

    .line 207
    if-le v5, v10, :cond_7

    .line 208
    .line 209
    const-string v3, "line-count-3+"

    .line 210
    .line 211
    iput-object v3, v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 212
    .line 213
    :goto_3
    move-object/from16 v22, v8

    .line 214
    .line 215
    goto/16 :goto_15

    .line 216
    .line 217
    :cond_7
    const/4 v10, 0x1

    .line 218
    if-ne v5, v10, :cond_8

    .line 219
    .line 220
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 221
    .line 222
    invoke-virtual {v5, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_8
    new-instance v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    .line 226
    .line 227
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 228
    .line 229
    iget v10, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 230
    .line 231
    invoke-direct {v3, v5, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    .line 232
    .line 233
    .line 234
    if-nez v11, :cond_9

    .line 235
    .line 236
    iget-object v5, v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 237
    .line 238
    sget-object v10, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 239
    .line 240
    if-ne v5, v10, :cond_9

    .line 241
    .line 242
    new-instance v11, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    .line 243
    .line 244
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 245
    .line 246
    iget v10, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 247
    .line 248
    invoke-direct {v11, v5, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    .line 249
    .line 250
    .line 251
    :cond_9
    if-nez v13, :cond_a

    .line 252
    .line 253
    const/4 v5, 0x0

    .line 254
    goto :goto_4

    .line 255
    :cond_a
    iget v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 256
    .line 257
    :goto_4
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    move-object/from16 v20, v3

    .line 266
    .line 267
    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 268
    .line 269
    add-int/2addr v5, v10

    .line 270
    add-int/2addr v5, v3

    .line 271
    iput v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 272
    .line 273
    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 274
    .line 275
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    iput v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 280
    .line 281
    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 282
    .line 283
    if-le v3, v2, :cond_1e

    .line 284
    .line 285
    :goto_5
    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 286
    .line 287
    if-le v3, v2, :cond_1c

    .line 288
    .line 289
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-nez v3, :cond_1c

    .line 296
    .line 297
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Landroid/widget/Button;

    .line 304
    .line 305
    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v3}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    if-nez v10, :cond_b

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_b
    invoke-interface {v10, v5, v3}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    :goto_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 333
    .line 334
    invoke-virtual {v14, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 338
    .line 339
    move-object/from16 v21, v11

    .line 340
    .line 341
    div-int/lit8 v11, v10, 0x2

    .line 342
    .line 343
    invoke-virtual {v14, v11}, Ljava/text/BreakIterator;->preceding(I)I

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    const/4 v14, -0x1

    .line 348
    if-ne v11, v14, :cond_c

    .line 349
    .line 350
    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 351
    .line 352
    invoke-virtual {v11}, Ljava/text/BreakIterator;->next()I

    .line 353
    .line 354
    .line 355
    move-result v11

    .line 356
    if-ne v11, v14, :cond_c

    .line 357
    .line 358
    move-object/from16 v22, v8

    .line 359
    .line 360
    move/from16 v23, v12

    .line 361
    .line 362
    move/from16 v24, v13

    .line 363
    .line 364
    move-object/from16 v26, v15

    .line 365
    .line 366
    const/4 v0, -0x1

    .line 367
    const/4 v14, -0x1

    .line 368
    goto/16 :goto_e

    .line 369
    .line 370
    :cond_c
    invoke-virtual {v3}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    .line 371
    .line 372
    .line 373
    move-result-object v11

    .line 374
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 375
    .line 376
    invoke-virtual {v14}, Ljava/text/BreakIterator;->current()I

    .line 377
    .line 378
    .line 379
    move-result v14

    .line 380
    move-object/from16 v22, v8

    .line 381
    .line 382
    move/from16 v23, v12

    .line 383
    .line 384
    const/4 v8, 0x0

    .line 385
    invoke-static {v5, v8, v14, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    invoke-static {v5, v14, v10, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    .line 394
    .line 395
    .line 396
    move-result v14

    .line 397
    cmpl-float v8, v12, v8

    .line 398
    .line 399
    if-eqz v8, :cond_14

    .line 400
    .line 401
    if-lez v8, :cond_d

    .line 402
    .line 403
    const/4 v8, 0x1

    .line 404
    goto :goto_7

    .line 405
    :cond_d
    const/4 v8, 0x0

    .line 406
    :goto_7
    iget v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    .line 407
    .line 408
    move/from16 v24, v13

    .line 409
    .line 410
    const/4 v13, 0x0

    .line 411
    :goto_8
    if-ge v13, v12, :cond_f

    .line 412
    .line 413
    move/from16 v25, v12

    .line 414
    .line 415
    iget v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 416
    .line 417
    const/16 v17, 0x1

    .line 418
    .line 419
    add-int/lit8 v12, v12, 0x1

    .line 420
    .line 421
    iput v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    .line 422
    .line 423
    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 424
    .line 425
    if-eqz v8, :cond_e

    .line 426
    .line 427
    invoke-virtual {v12}, Ljava/text/BreakIterator;->previous()I

    .line 428
    .line 429
    .line 430
    move-result v12

    .line 431
    goto :goto_9

    .line 432
    :cond_e
    invoke-virtual {v12}, Ljava/text/BreakIterator;->next()I

    .line 433
    .line 434
    .line 435
    move-result v12

    .line 436
    :goto_9
    const/4 v0, -0x1

    .line 437
    if-ne v12, v0, :cond_10

    .line 438
    .line 439
    :cond_f
    :goto_a
    move-object/from16 v26, v15

    .line 440
    .line 441
    goto :goto_d

    .line 442
    :cond_10
    move-object/from16 v26, v15

    .line 443
    .line 444
    const/4 v0, 0x0

    .line 445
    invoke-static {v5, v0, v12, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 446
    .line 447
    .line 448
    move-result v15

    .line 449
    invoke-static {v5, v12, v10, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    .line 454
    .line 455
    .line 456
    move-result v12

    .line 457
    cmpg-float v27, v12, v14

    .line 458
    .line 459
    if-gez v27, :cond_15

    .line 460
    .line 461
    if-eqz v8, :cond_11

    .line 462
    .line 463
    cmpg-float v0, v15, v0

    .line 464
    .line 465
    if-gtz v0, :cond_12

    .line 466
    .line 467
    goto :goto_b

    .line 468
    :cond_11
    cmpl-float v0, v15, v0

    .line 469
    .line 470
    if-ltz v0, :cond_12

    .line 471
    .line 472
    :goto_b
    const/4 v0, 0x1

    .line 473
    goto :goto_c

    .line 474
    :cond_12
    const/4 v0, 0x0

    .line 475
    :goto_c
    if-eqz v0, :cond_13

    .line 476
    .line 477
    move v14, v12

    .line 478
    goto :goto_d

    .line 479
    :cond_13
    add-int/lit8 v13, v13, 0x1

    .line 480
    .line 481
    move-object/from16 v0, p0

    .line 482
    .line 483
    move v14, v12

    .line 484
    move/from16 v12, v25

    .line 485
    .line 486
    move-object/from16 v15, v26

    .line 487
    .line 488
    goto :goto_8

    .line 489
    :cond_14
    move/from16 v24, v13

    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_15
    :goto_d
    float-to-double v10, v14

    .line 493
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 494
    .line 495
    .line 496
    move-result-wide v10

    .line 497
    double-to-int v0, v10

    .line 498
    move v14, v0

    .line 499
    const/4 v0, -0x1

    .line 500
    :goto_e
    if-ne v14, v0, :cond_16

    .line 501
    .line 502
    goto :goto_11

    .line 503
    :cond_16
    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    invoke-virtual {v3}, Landroid/widget/TextView;->nullLayouts()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingStart()I

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingEnd()I

    .line 518
    .line 519
    .line 520
    move-result v8

    .line 521
    add-int/2addr v8, v5

    .line 522
    add-int/2addr v8, v14

    .line 523
    invoke-virtual {v3}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    const/4 v10, 0x0

    .line 528
    aget-object v5, v5, v10

    .line 529
    .line 530
    if-nez v5, :cond_17

    .line 531
    .line 532
    const/4 v5, 0x0

    .line 533
    goto :goto_f

    .line 534
    :cond_17
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 539
    .line 540
    .line 541
    move-result v5

    .line 542
    invoke-virtual {v3}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    add-int/2addr v5, v10

    .line 547
    :goto_f
    add-int/2addr v8, v5

    .line 548
    const/high16 v5, -0x80000000

    .line 549
    .line 550
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    invoke-virtual {v3, v8, v1}, Landroid/widget/Button;->measure(II)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    if-nez v5, :cond_18

    .line 562
    .line 563
    invoke-static {v6, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    :cond_18
    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    check-cast v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 575
    .line 576
    invoke-virtual {v3}, Landroid/widget/Button;->getLineCount()I

    .line 577
    .line 578
    .line 579
    move-result v10

    .line 580
    const/4 v11, 0x2

    .line 581
    if-gt v10, v11, :cond_1a

    .line 582
    .line 583
    if-lt v5, v0, :cond_19

    .line 584
    .line 585
    goto :goto_10

    .line 586
    :cond_19
    const/4 v10, 0x1

    .line 587
    iput v10, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 588
    .line 589
    sub-int v14, v0, v5

    .line 590
    .line 591
    const/4 v0, -0x1

    .line 592
    goto :goto_12

    .line 593
    :cond_1a
    :goto_10
    const/4 v0, 0x3

    .line 594
    iput v0, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 595
    .line 596
    :goto_11
    const/4 v0, -0x1

    .line 597
    const/4 v14, -0x1

    .line 598
    :goto_12
    if-eq v14, v0, :cond_1b

    .line 599
    .line 600
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 601
    .line 602
    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    iput v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 611
    .line 612
    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 613
    .line 614
    sub-int/2addr v3, v14

    .line 615
    iput v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 616
    .line 617
    :cond_1b
    move-object/from16 v0, p0

    .line 618
    .line 619
    move-object/from16 v11, v21

    .line 620
    .line 621
    move-object/from16 v8, v22

    .line 622
    .line 623
    move/from16 v12, v23

    .line 624
    .line 625
    move/from16 v13, v24

    .line 626
    .line 627
    move-object/from16 v15, v26

    .line 628
    .line 629
    goto/16 :goto_5

    .line 630
    .line 631
    :cond_1c
    move-object/from16 v22, v8

    .line 632
    .line 633
    move-object/from16 v21, v11

    .line 634
    .line 635
    move/from16 v23, v12

    .line 636
    .line 637
    move/from16 v24, v13

    .line 638
    .line 639
    move-object/from16 v26, v15

    .line 640
    .line 641
    iget v0, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 642
    .line 643
    if-le v0, v2, :cond_1d

    .line 644
    .line 645
    const/4 v0, 0x3

    .line 646
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    .line 647
    .line 648
    .line 649
    const-string/jumbo v0, "overflow"

    .line 650
    .line 651
    .line 652
    move-object/from16 v3, v26

    .line 653
    .line 654
    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 655
    .line 656
    move-object/from16 v4, v20

    .line 657
    .line 658
    move-object/from16 v11, v21

    .line 659
    .line 660
    move/from16 v12, v23

    .line 661
    .line 662
    move/from16 v13, v24

    .line 663
    .line 664
    goto :goto_15

    .line 665
    :cond_1d
    move-object/from16 v3, v26

    .line 666
    .line 667
    const/4 v0, 0x2

    .line 668
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    .line 669
    .line 670
    .line 671
    goto :goto_13

    .line 672
    :cond_1e
    move-object/from16 v22, v8

    .line 673
    .line 674
    move-object/from16 v21, v11

    .line 675
    .line 676
    move/from16 v23, v12

    .line 677
    .line 678
    move/from16 v24, v13

    .line 679
    .line 680
    move-object v3, v15

    .line 681
    :goto_13
    const/4 v0, 0x1

    .line 682
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 683
    .line 684
    const-string v0, "n/a"

    .line 685
    .line 686
    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 687
    .line 688
    add-int/lit8 v13, v24, 0x1

    .line 689
    .line 690
    iget-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 691
    .line 692
    sget-object v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    .line 693
    .line 694
    if-ne v0, v3, :cond_1f

    .line 695
    .line 696
    add-int/lit8 v12, v23, 0x1

    .line 697
    .line 698
    goto :goto_14

    .line 699
    :cond_1f
    move/from16 v12, v23

    .line 700
    .line 701
    :goto_14
    move-object/from16 v11, v21

    .line 702
    .line 703
    :goto_15
    const/4 v5, 0x0

    .line 704
    move-object/from16 v0, p0

    .line 705
    .line 706
    move-object/from16 v9, v18

    .line 707
    .line 708
    move/from16 v10, v19

    .line 709
    .line 710
    move-object/from16 v8, v22

    .line 711
    .line 712
    goto/16 :goto_2

    .line 713
    .line 714
    :cond_20
    move v3, v5

    .line 715
    move-object/from16 v22, v8

    .line 716
    .line 717
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    .line 718
    .line 719
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 720
    .line 721
    if-eqz v2, :cond_27

    .line 722
    .line 723
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    .line 724
    .line 725
    const/4 v3, 0x1

    .line 726
    if-gt v2, v3, :cond_21

    .line 727
    .line 728
    goto :goto_17

    .line 729
    :cond_21
    move-object/from16 v8, v22

    .line 730
    .line 731
    check-cast v8, Ljava/util/ArrayList;

    .line 732
    .line 733
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    const/4 v8, 0x0

    .line 738
    :cond_22
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-eqz v3, :cond_23

    .line 743
    .line 744
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    check-cast v3, Landroid/view/View;

    .line 749
    .line 750
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 755
    .line 756
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 757
    .line 758
    if-eqz v3, :cond_22

    .line 759
    .line 760
    add-int/lit8 v8, v8, 0x1

    .line 761
    .line 762
    goto :goto_16

    .line 763
    :cond_23
    if-eqz v8, :cond_25

    .line 764
    .line 765
    iget v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    .line 766
    .line 767
    if-lt v8, v2, :cond_24

    .line 768
    .line 769
    goto :goto_17

    .line 770
    :cond_24
    const/4 v10, 0x0

    .line 771
    goto :goto_18

    .line 772
    :cond_25
    :goto_17
    const/4 v10, 0x1

    .line 773
    :goto_18
    if-nez v10, :cond_27

    .line 774
    .line 775
    move-object/from16 v8, v22

    .line 776
    .line 777
    check-cast v8, Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 784
    .line 785
    .line 786
    move-result v3

    .line 787
    if-eqz v3, :cond_26

    .line 788
    .line 789
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    check-cast v3, Landroid/view/View;

    .line 794
    .line 795
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 800
    .line 801
    const/4 v10, 0x0

    .line 802
    iput-boolean v10, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 803
    .line 804
    const-string v4, "not-enough-system-replies"

    .line 805
    .line 806
    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    .line 807
    .line 808
    goto :goto_19

    .line 809
    :cond_26
    const/4 v3, 0x1

    .line 810
    const/4 v10, 0x0

    .line 811
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    .line 812
    .line 813
    move-object v4, v11

    .line 814
    goto :goto_1a

    .line 815
    :cond_27
    const/4 v3, 0x1

    .line 816
    const/4 v10, 0x0

    .line 817
    :goto_1a
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 818
    .line 819
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    .line 820
    .line 821
    .line 822
    iget v2, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 823
    .line 824
    const/high16 v5, 0x40000000    # 2.0f

    .line 825
    .line 826
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 827
    .line 828
    .line 829
    move-result v5

    .line 830
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    move v8, v10

    .line 835
    :goto_1b
    if-ge v8, v6, :cond_2c

    .line 836
    .line 837
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 838
    .line 839
    .line 840
    move-result-object v7

    .line 841
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 842
    .line 843
    .line 844
    move-result-object v9

    .line 845
    check-cast v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 846
    .line 847
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 848
    .line 849
    if-nez v11, :cond_28

    .line 850
    .line 851
    const/high16 v9, -0x80000000

    .line 852
    .line 853
    const/4 v12, 0x3

    .line 854
    goto :goto_1d

    .line 855
    :cond_28
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 856
    .line 857
    .line 858
    move-result v11

    .line 859
    iget v9, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 860
    .line 861
    const/4 v12, 0x3

    .line 862
    if-ne v9, v12, :cond_29

    .line 863
    .line 864
    move v9, v3

    .line 865
    const v11, 0x7fffffff

    .line 866
    .line 867
    .line 868
    goto :goto_1c

    .line 869
    :cond_29
    move v9, v10

    .line 870
    :goto_1c
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 871
    .line 872
    .line 873
    move-result v13

    .line 874
    if-eq v13, v2, :cond_2a

    .line 875
    .line 876
    move v9, v3

    .line 877
    :cond_2a
    if-eqz v9, :cond_2b

    .line 878
    .line 879
    const/high16 v9, -0x80000000

    .line 880
    .line 881
    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 882
    .line 883
    .line 884
    move-result v11

    .line 885
    invoke-virtual {v7, v11, v5}, Landroid/view/View;->measure(II)V

    .line 886
    .line 887
    .line 888
    goto :goto_1d

    .line 889
    :cond_2b
    const/high16 v9, -0x80000000

    .line 890
    .line 891
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    .line 892
    .line 893
    goto :goto_1b

    .line 894
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    iget v3, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    .line 899
    .line 900
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 901
    .line 902
    add-int/2addr v3, v5

    .line 903
    iget v5, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    .line 904
    .line 905
    add-int/2addr v3, v5

    .line 906
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    .line 911
    .line 912
    .line 913
    move-result v3

    .line 914
    iget v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 915
    .line 916
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    move/from16 v4, p1

    .line 921
    .line 922
    invoke-static {v3, v4}, Landroid/view/ViewGroup;->resolveSize(II)I

    .line 923
    .line 924
    .line 925
    move-result v3

    .line 926
    invoke-static {v2, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 931
    .line 932
    .line 933
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 934
    .line 935
    .line 936
    move-result-wide v1

    .line 937
    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastMeasureTime:J

    .line 938
    .line 939
    return-void
.end method

.method public final setButtonColors(Landroid/widget/Button;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 15
    .line 16
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    .line 17
    .line 18
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    instance-of v2, v1, Landroid/graphics/drawable/InsetDrawable;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 45
    .line 46
    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final updateButtonColorOnUiModeChanged()V
    .locals 8

    .line 1
    const-class v0, Lnoticolorpicker/NotificationColorPicker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v1, v2}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 16
    .line 17
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const v3, 0x7f06046d

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    .line 27
    .line 28
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const v3, 0x7f0607ff

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 38
    .line 39
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const v3, 0x7f060483

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 57
    .line 58
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 63
    .line 64
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 69
    .line 70
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/16 v5, 0x7f

    .line 75
    .line 76
    invoke-static {v5, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 81
    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    move v3, v1

    .line 87
    :goto_0
    if-ge v3, v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Landroid/widget/Button;

    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    aget-object v5, v5, v1

    .line 106
    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    aget-object v5, v5, v1

    .line 114
    .line 115
    instance-of v5, v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 116
    .line 117
    if-eqz v5, :cond_1

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    aget-object v5, v5, v1

    .line 124
    .line 125
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    .line 127
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 136
    .line 137
    if-ne v6, v7, :cond_1

    .line 138
    .line 139
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 144
    .line 145
    invoke-virtual {v6, v7, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {v5}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    aget-object v6, v6, v1

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_2

    .line 175
    .line 176
    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    aget-object v5, v5, v1

    .line 181
    .line 182
    iget v6, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    .line 183
    .line 184
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 185
    .line 186
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 187
    .line 188
    .line 189
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;)V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_3
    return-void
.end method
