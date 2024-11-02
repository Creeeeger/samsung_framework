.class public final synthetic Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

.field public final synthetic f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "SecQSCustomizerController"

    .line 4
    .line 5
    const-string v2, ", startIndex="

    .line 6
    .line 7
    const-string/jumbo v3, "sourceTile="

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 18
    .line 19
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 20
    .line 21
    check-cast p2, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->sendAnnouncementEvent()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 43
    .line 44
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 45
    .line 46
    check-cast p2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 85
    .line 86
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 87
    .line 88
    mul-int/2addr v1, p0

    .line 89
    rem-int/2addr p2, v1

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationStart(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Ljava/lang/Boolean;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animateCurrentPage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 110
    .line 111
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 112
    .line 113
    check-cast p2, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->sendAnnouncementEvent()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 135
    .line 136
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 137
    .line 138
    check-cast p2, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 149
    .line 150
    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 177
    .line 178
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 179
    .line 180
    mul-int/2addr v1, p0

    .line 181
    rem-int/2addr p2, v1

    .line 182
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationStart(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Ljava/lang/Boolean;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animateCurrentPage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 202
    .line 203
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 204
    .line 205
    check-cast p2, Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 215
    .line 216
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 217
    .line 218
    mul-int/2addr v1, p0

    .line 219
    rem-int/2addr p2, v1

    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    new-instance p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 229
    .line 230
    invoke-direct {p2}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 231
    .line 232
    .line 233
    const/16 v1, 0x3e8

    .line 234
    .line 235
    iput v1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 236
    .line 237
    iput p0, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->touchedPos:I

    .line 238
    .line 239
    iput-object p1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 240
    .line 241
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->sendAnnouncementEvent()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
