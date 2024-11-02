.class public final Lcom/android/systemui/qs/animator/QsExpandAnimator$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDate:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    iget-object p3, p1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 8
    .line 9
    if-eqz p3, :cond_2

    .line 10
    .line 11
    iget-object p3, p1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockButtonContainer:Landroid/view/View;

    .line 12
    .line 13
    if-eqz p3, :cond_2

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonContainer:Landroid/view/View;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDate:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockView:Lcom/android/systemui/statusbar/policy/QSClockHeaderView;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    int-to-float p2, p2

    .line 50
    add-float/2addr p1, p2

    .line 51
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonContainer:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    int-to-float p2, p2

    .line 60
    add-float/2addr p2, p1

    .line 61
    iget-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 62
    .line 63
    iget-object p3, p3, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockButtonContainer:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    int-to-float p3, p3

    .line 70
    cmpl-float p2, p2, p3

    .line 71
    .line 72
    if-lez p2, :cond_1

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p2, 0x0

    .line 77
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p4, "mIsDateButtonOverlapped = "

    .line 80
    .line 81
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 85
    .line 86
    iget-boolean p4, p4, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsDateButtonOverlapped:Z

    .line 87
    .line 88
    const-string p5, " >> "

    .line 89
    .line 90
    const-string p6, ", ("

    .line 91
    .line 92
    invoke-static {p3, p4, p5, p2, p6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p4, " + "

    .line 99
    .line 100
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 104
    .line 105
    iget-object p4, p4, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonContainer:Landroid/view/View;

    .line 106
    .line 107
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 108
    .line 109
    .line 110
    move-result p4

    .line 111
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p4, ") = "

    .line 115
    .line 116
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object p4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 120
    .line 121
    iget-object p4, p4, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonContainer:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    int-to-float p4, p4

    .line 128
    add-float/2addr p1, p4

    .line 129
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, " : "

    .line 133
    .line 134
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockButtonContainer:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string p3, "QsExpandAnimator"

    .line 153
    .line 154
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 158
    .line 159
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsDateButtonOverlapped:Z

    .line 160
    .line 161
    if-eq p1, p2, :cond_2

    .line 162
    .line 163
    iput-boolean p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mIsDateButtonOverlapped:Z

    .line 164
    .line 165
    if-nez p2, :cond_2

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDate:Landroid/widget/TextView;

    .line 168
    .line 169
    const/high16 p1, 0x3f800000    # 1.0f

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 172
    .line 173
    .line 174
    :cond_2
    :goto_1
    return-void
.end method
