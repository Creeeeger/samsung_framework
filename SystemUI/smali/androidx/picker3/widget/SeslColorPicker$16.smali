.class public final Landroidx/picker3/widget/SeslColorPicker$16;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;

.field public final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 v3, 0xff

    .line 13
    .line 14
    if-le p1, v3, :cond_4

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 19
    .line 20
    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const-string v4, "255"

    .line 27
    .line 28
    if-ne p1, v3, :cond_0

    .line 29
    .line 30
    :try_start_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 40
    .line 41
    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-ne p1, v3, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 50
    .line 51
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 59
    .line 60
    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-ne p1, v3, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 69
    .line 70
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 83
    .line 84
    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v3, "0"

    .line 91
    .line 92
    if-ne p1, v1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 95
    .line 96
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 104
    .line 105
    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-ne p1, v1, :cond_3

    .line 112
    .line 113
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 114
    .line 115
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 116
    .line 117
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    .line 121
    .line 122
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 123
    .line 124
    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-ne p1, v0, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 133
    .line 134
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 140
    .line 141
    iput-boolean v2, p1, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    .line 142
    .line 143
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 157
    .line 158
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 172
    .line 173
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 6
    .line 7
    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_5

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-gtz p1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const-string p2, "0"

    .line 48
    .line 49
    if-lez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object p1, p2

    .line 67
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-lez p3, :cond_2

    .line 90
    .line 91
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move-object p3, p2

    .line 107
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    iget-object p4, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 112
    .line 113
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    if-lez p4, :cond_3

    .line 130
    .line 131
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    iget-object p4, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 150
    .line 151
    invoke-virtual {p4}, Landroid/widget/SeekBar;->getProgress()I

    .line 152
    .line 153
    .line 154
    move-result p4

    .line 155
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p4

    .line 159
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p4

    .line 163
    and-int/lit16 p4, p4, 0xff

    .line 164
    .line 165
    shl-int/lit8 p4, p4, 0x18

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    and-int/lit16 p1, p1, 0xff

    .line 172
    .line 173
    shl-int/lit8 p1, p1, 0x10

    .line 174
    .line 175
    or-int/2addr p1, p4

    .line 176
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    and-int/lit16 p3, p3, 0xff

    .line 181
    .line 182
    shl-int/lit8 p3, p3, 0x8

    .line 183
    .line 184
    or-int/2addr p1, p3

    .line 185
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    and-int/lit16 p2, p2, 0xff

    .line 190
    .line 191
    or-int/2addr p1, p2

    .line 192
    and-int/lit8 p2, p1, -0x1

    .line 193
    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    const-string p3, "%08x"

    .line 203
    .line 204
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 209
    .line 210
    .line 211
    move-result p3

    .line 212
    const/4 p4, 0x2

    .line 213
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 218
    .line 219
    new-instance p4, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v0, ""

    .line 222
    .line 223
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 243
    .line 244
    .line 245
    move-result-object p3

    .line 246
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    .line 247
    .line 248
    .line 249
    move-result p3

    .line 250
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 251
    .line 252
    .line 253
    iget-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    .line 254
    .line 255
    if-nez p2, :cond_4

    .line 256
    .line 257
    iget-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    .line 258
    .line 259
    if-nez p2, :cond_4

    .line 260
    .line 261
    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 262
    .line 263
    .line 264
    :cond_4
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    .line 265
    .line 266
    if-eqz p0, :cond_5

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->onColorChanged(I)V

    .line 269
    .line 270
    .line 271
    :cond_5
    :goto_2
    return-void
.end method
