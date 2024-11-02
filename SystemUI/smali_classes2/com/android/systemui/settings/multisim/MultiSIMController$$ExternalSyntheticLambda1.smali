.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

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
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 10
    .line 11
    move v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mVisCallbacks:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v0, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    .line 35
    .line 36
    check-cast v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    move v4, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/16 v4, 0x8

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->updateButtonList()V

    .line 48
    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget-object v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    iput-object v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mPopupWindow:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 61
    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void

    .line 66
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataCallbacks:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-ge v1, v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    new-instance v2, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 101
    .line 102
    invoke-direct {v2}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;->onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDataNotified:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    return-void

    .line 127
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const-string v0, "MultiSIMController"

    .line 133
    .line 134
    const-string/jumbo v1, "updateCurrentDefaultSlot list"

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mDefaultIdUpdateList:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
