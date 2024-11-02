.class public final Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SINCE_AI_CORRECTION:Ljava/lang/Integer;

.field public static final SINCE_AI_EMOJI_AUGMENTATION:Ljava/lang/Integer;

.field public static final SINCE_AI_GENERIC:Ljava/lang/Integer;

.field public static final SINCE_AI_NOTES_ORGANIZATION:Ljava/lang/Integer;

.field public static final SINCE_AI_SMART_CAPTURE:Ljava/lang/Integer;

.field public static final SINCE_AI_SMART_COVER:Ljava/lang/Integer;

.field public static final SINCE_AI_SMART_REPLY:Ljava/lang/Integer;

.field public static final SINCE_AI_SUMMARY:Ljava/lang/Integer;

.field public static final SINCE_AI_TONE:Ljava/lang/Integer;

.field public static final SINCE_AI_TRANSLATION:Ljava/lang/Integer;

.field public static final SINCE_AI_USAGE:Ljava/lang/Integer;

.field public static final SINCE_SIVS_CLASSIFICATION:Ljava/lang/Integer;

.field public static final SINCE_SIVS_CONFIGURATION:Ljava/lang/Integer;

.field public static final SINCE_SIVS_EXTRACTION:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SUMMARY:Ljava/lang/Integer;

    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_TRANSLATION:Ljava/lang/Integer;

    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_TONE:Ljava/lang/Integer;

    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_CORRECTION:Ljava/lang/Integer;

    .line 13
    .line 14
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SMART_COVER:Ljava/lang/Integer;

    .line 15
    .line 16
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SMART_REPLY:Ljava/lang/Integer;

    .line 17
    .line 18
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_EMOJI_AUGMENTATION:Ljava/lang/Integer;

    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_NOTES_ORGANIZATION:Ljava/lang/Integer;

    .line 21
    .line 22
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_SMART_CAPTURE:Ljava/lang/Integer;

    .line 23
    .line 24
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_SIVS_CLASSIFICATION:Ljava/lang/Integer;

    .line 25
    .line 26
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_SIVS_EXTRACTION:Ljava/lang/Integer;

    .line 27
    .line 28
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_SIVS_CONFIGURATION:Ljava/lang/Integer;

    .line 29
    .line 30
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_GENERIC:Ljava/lang/Integer;

    .line 31
    .line 32
    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/LlmServiceConst;->SINCE_AI_USAGE:Ljava/lang/Integer;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
