.class public final synthetic Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/TextClassifierResolver;

.field public final synthetic f$1:Landroid/content/ClipData;

.field public final synthetic f$2:Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/TextClassifierResolver;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/TextClassifierResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ClipData;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/TextClassifierResolver;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ClipData;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-boolean v4, Lcom/android/wm/shell/draganddrop/BaseResolver;->DEBUG:Z

    .line 30
    .line 31
    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/BaseResolver;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const-string/jumbo p0, "updateByTextClassifying: There is Null text."

    .line 38
    .line 39
    .line 40
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v6, "\u0000"

    .line 53
    .line 54
    const-string v7, ""

    .line 55
    .line 56
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    const-string/jumbo p0, "updateByTextClassifying: There is no text."

    .line 69
    .line 70
    .line 71
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v1}, Landroid/content/ClipData;->getCallingUserId()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput v1, v0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->mCallingUserId:I

    .line 84
    .line 85
    new-instance v1, Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-direct {v1, v3, v2, v4}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/BaseResolver;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v3}, Landroid/service/textclassifier/TextClassifierService;->getDefaultTextClassifierImplementation(Landroid/content/Context;)Landroid/view/textclassifier/TextClassifier;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v4, v1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/TextClassifierResolver$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;

    .line 109
    .line 110
    invoke-virtual {v0, v4, p0, v2}, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->getResultFromTextClassification(Landroid/view/textclassifier/TextClassification;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;Z)Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    const-string/jumbo v2, "textclassification"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Landroid/view/textclassifier/TextClassificationManager;

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-virtual {v2, v3}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2, v1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1, p0, v3}, Lcom/android/wm/shell/draganddrop/TextClassifierResolver;->getResultFromTextClassification(Landroid/view/textclassifier/TextClassification;Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;Z)Lcom/android/wm/shell/draganddrop/SingleIntentAppResult;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string/jumbo p0, "updateByTextClassifying: Use System type"

    .line 139
    .line 140
    .line 141
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_5
    const-string/jumbo p0, "updateByTextClassifying: Use Default System type"

    .line 146
    .line 147
    .line 148
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :goto_0
    if-eqz v2, :cond_6

    .line 152
    .line 153
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    goto :goto_1

    .line 158
    :cond_6
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :goto_1
    return-object p0
.end method
