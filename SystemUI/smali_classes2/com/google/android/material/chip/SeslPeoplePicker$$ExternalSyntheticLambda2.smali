.class public final synthetic Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/material/chip/SeslPeoplePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslPeoplePicker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 9
    .line 10
    sget v0, Lcom/google/android/material/chip/SeslPeoplePicker;->$r8$clinit:I

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslPeoplePicker;->updateFloatWhenExpanded()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 17
    .line 18
    iget-object p0, v2, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->getTotalWidth()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le p0, v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const v0, 0x7f0b00f3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    iget-object v0, v2, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-boolean v1, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mFloatChangeAllowed:Z

    .line 49
    .line 50
    iget-object v0, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/SeslExpansionButton;->setFloated(Z)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, v2, Lcom/google/android/material/chip/SeslPeoplePicker;->mIsRtl:Z

    .line 57
    .line 58
    const-string v4, "SeslExpandableContainer"

    .line 59
    .line 60
    const-string v5, "cannot scroll if container is expanded"

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, v2, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v2, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/SeslExpansionButton;->setFloated(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v2, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 79
    .line 80
    iget-boolean v3, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 81
    .line 82
    if-nez v3, :cond_1

    .line 83
    .line 84
    if-nez v3, :cond_0

    .line 85
    .line 86
    iget-object v3, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 87
    .line 88
    new-instance v4, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda3;

    .line 89
    .line 90
    invoke-direct {v4, v0, p0, v1, v1}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;III)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, v2, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 106
    .line 107
    iget-boolean v1, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 108
    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    new-instance v1, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;

    .line 112
    .line 113
    invoke-direct {v1, v0, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :goto_0
    new-instance v0, Lcom/google/android/material/chip/SeslPeoplePicker$1;

    .line 124
    .line 125
    int-to-long v5, p0

    .line 126
    move-object v1, v0

    .line 127
    move-wide v3, v5

    .line 128
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/chip/SeslPeoplePicker$1;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;JJ)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 132
    .line 133
    .line 134
    :cond_4
    return-void

    .line 135
    :pswitch_2
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 136
    .line 137
    sget v0, Lcom/google/android/material/chip/SeslPeoplePicker;->$r8$clinit:I

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslPeoplePicker;->updateFloatWhenExpanded()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 144
    .line 145
    sget v0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->$r8$clinit:I

    .line 146
    .line 147
    sget v0, Lcom/google/android/material/chip/SeslPeoplePicker;->$r8$clinit:I

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslPeoplePicker;->updateFloatWhenExpanded()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
