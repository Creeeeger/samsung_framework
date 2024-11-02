.class public final Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;

.field public static final SYSUI_NAMESPACE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;->$$INSTANCE:Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;

    .line 7
    .line 8
    const-string/jumbo v0, "systemui"

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;->SYSUI_NAMESPACE:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
