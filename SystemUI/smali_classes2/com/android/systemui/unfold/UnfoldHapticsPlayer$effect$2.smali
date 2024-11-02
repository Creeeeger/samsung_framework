.class final Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/unfold/UnfoldHapticsPlayer;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;Landroid/os/Vibrator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldHapticsPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "persist.unfold.primitives_count"

    .line 18
    .line 19
    .line 20
    const-string v4, "18"

    .line 21
    .line 22
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v4, 0xa

    .line 27
    .line 28
    invoke-static {v4}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, 0x30

    .line 43
    .line 44
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const v8, -0x7fffffff

    .line 49
    .line 50
    .line 51
    if-gez v7, :cond_3

    .line 52
    .line 53
    const/4 v7, 0x1

    .line 54
    if-ne v5, v7, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const/16 v9, 0x2d

    .line 58
    .line 59
    if-ne v6, v9, :cond_2

    .line 60
    .line 61
    const/high16 v8, -0x80000000

    .line 62
    .line 63
    move v6, v7

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/16 v9, 0x2b

    .line 66
    .line 67
    if-ne v6, v9, :cond_6

    .line 68
    .line 69
    move v6, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move v6, v3

    .line 72
    move v7, v6

    .line 73
    :goto_0
    const v9, -0x38e38e3

    .line 74
    .line 75
    .line 76
    move v10, v3

    .line 77
    move v11, v9

    .line 78
    :goto_1
    if-ge v7, v5, :cond_8

    .line 79
    .line 80
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    invoke-static {v12, v4}, Ljava/lang/Character;->digit(II)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-gez v12, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    if-ge v10, v11, :cond_5

    .line 92
    .line 93
    if-ne v11, v9, :cond_6

    .line 94
    .line 95
    div-int/lit8 v11, v8, 0xa

    .line 96
    .line 97
    if-ge v10, v11, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    mul-int/lit8 v10, v10, 0xa

    .line 101
    .line 102
    add-int v13, v8, v12

    .line 103
    .line 104
    if-ge v10, v13, :cond_7

    .line 105
    .line 106
    :cond_6
    :goto_2
    const/4 v2, 0x0

    .line 107
    goto :goto_3

    .line 108
    :cond_7
    sub-int/2addr v10, v12

    .line 109
    add-int/lit8 v7, v7, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_8
    if-eqz v6, :cond_9

    .line 113
    .line 114
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    goto :goto_3

    .line 119
    :cond_9
    neg-int v2, v10

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :goto_3
    if-eqz v2, :cond_a

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    goto :goto_4

    .line 131
    :cond_a
    const/16 v2, 0x12

    .line 132
    .line 133
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 134
    .line 135
    move v5, v3

    .line 136
    :goto_5
    if-ge v5, v2, :cond_c

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string/jumbo v6, "persist.unfold.haptics_scale"

    .line 142
    .line 143
    .line 144
    const-string v7, "0.1"

    .line 145
    .line 146
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-eqz v6, :cond_b

    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    goto :goto_6

    .line 161
    :cond_b
    const v6, 0x3dcccccd    # 0.1f

    .line 162
    .line 163
    .line 164
    :goto_6
    const/16 v7, 0x8

    .line 165
    .line 166
    invoke-virtual {v0, v7, v6, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 167
    .line 168
    .line 169
    add-int/lit8 v5, v5, 0x1

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    const-string/jumbo p0, "persist.unfold.haptics_scale_end_tick"

    .line 178
    .line 179
    .line 180
    const-string v2, "0.6"

    .line 181
    .line 182
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    if-eqz p0, :cond_d

    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    goto :goto_7

    .line 197
    :cond_d
    const p0, 0x3f19999a    # 0.6f

    .line 198
    .line 199
    .line 200
    :goto_7
    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0
.end method
