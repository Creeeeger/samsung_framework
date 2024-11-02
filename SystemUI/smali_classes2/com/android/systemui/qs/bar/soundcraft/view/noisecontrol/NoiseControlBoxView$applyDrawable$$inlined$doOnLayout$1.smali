.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $effectCount$inlined:I

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->$effectCount$inlined:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->middleDrawable:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->$effectCount$inlined:I

    .line 36
    .line 37
    const/4 p4, 0x4

    .line 38
    if-ne p3, p4, :cond_0

    .line 39
    .line 40
    move p4, p2

    .line 41
    :cond_0
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 47
    .line 48
    check-cast p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 65
    .line 66
    iget-object p3, p3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 67
    .line 68
    check-cast p3, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 75
    .line 76
    iget-object p2, p2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    sub-int p3, p2, p1

    .line 85
    .line 86
    iget-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 87
    .line 88
    invoke-virtual {p4}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    iget-object p4, p4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 93
    .line 94
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    iget p5, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->$effectCount$inlined:I

    .line 99
    .line 100
    mul-int/2addr p1, p5

    .line 101
    sub-int/2addr p4, p1

    .line 102
    sub-int/2addr p4, p3

    .line 103
    add-int/lit8 p5, p5, -0x1

    .line 104
    .line 105
    div-int/2addr p4, p5

    .line 106
    div-int/lit8 p3, p3, 0x2

    .line 107
    .line 108
    sub-int/2addr p2, p3

    .line 109
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    .line 123
    iget-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 124
    .line 125
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    iget-object p3, p3, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 130
    .line 131
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->middleDrawable:Landroid/widget/ImageView;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    .line 167
    iget-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 168
    .line 169
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    iget-object p3, p3, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 174
    .line 175
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->middleDrawable:Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 203
    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 214
    .line 215
    .line 216
    return-void
.end method
