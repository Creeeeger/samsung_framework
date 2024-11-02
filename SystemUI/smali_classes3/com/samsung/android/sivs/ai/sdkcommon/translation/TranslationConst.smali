.class public final Lcom/samsung/android/sivs/ai/sdkcommon/translation/TranslationConst;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SINCE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE:Ljava/lang/Integer;

.field public static final SINCE_LANGUAGE_LIST_IDENTIFICATION:Ljava/lang/Integer;

.field public static final SINCE_NEURAL_TRANSLATION:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/TranslationConst;->SINCE_NEURAL_TRANSLATION:Ljava/lang/Integer;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/TranslationConst;->SINCE_LANGUAGE_LIST_IDENTIFICATION:Ljava/lang/Integer;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/TranslationConst;->SINCE_LANGUAGE_IDENTIFICATION_AND_GET_CANDIDATE:Ljava/lang/Integer;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
