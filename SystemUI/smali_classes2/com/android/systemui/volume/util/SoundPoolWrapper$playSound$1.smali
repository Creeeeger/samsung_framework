.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    sget-boolean v2, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    .line 9
    .line 10
    const/4 v9, 0x1

    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string/jumbo v5, "system_sound"

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, ""

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    move-object v4, v5

    .line 35
    :cond_0
    const-string v6, "Open_theme"

    .line 36
    .line 37
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string/jumbo v4, "prev_system_sound"

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v5, v2

    .line 58
    :goto_0
    move-object v4, v5

    .line 59
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const v3, 0x1155f

    .line 64
    .line 65
    .line 66
    if-eq v2, v3, :cond_7

    .line 67
    .line 68
    const v3, 0x1fee7f

    .line 69
    .line 70
    .line 71
    if-eq v2, v3, :cond_5

    .line 72
    .line 73
    const v3, 0x4b3327e

    .line 74
    .line 75
    .line 76
    if-eq v2, v3, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-string v2, "Retro"

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v2, 0x3

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const-string v2, "Calm"

    .line 91
    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    move v2, v9

    .line 100
    goto :goto_2

    .line 101
    :cond_7
    const-string v2, "Fun"

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    :goto_1
    move v2, v8

    .line 110
    goto :goto_2

    .line 111
    :cond_8
    const/4 v2, 0x2

    .line 112
    :goto_2
    iget-object v0, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    .line 113
    .line 114
    aget v0, v0, v2

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_9
    iget v0, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundID:I

    .line 118
    .line 119
    :goto_3
    move v2, v0

    .line 120
    const/high16 v3, 0x3f800000    # 1.0f

    .line 121
    .line 122
    const/high16 v4, 0x3f800000    # 1.0f

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    const/high16 v7, 0x3f800000    # 1.0f

    .line 127
    .line 128
    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_a

    .line 133
    .line 134
    move v8, v9

    .line 135
    :cond_a
    if-eqz v8, :cond_c

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 144
    .line 145
    .line 146
    :cond_b
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 148
    .line 149
    :cond_c
    return-void
.end method
