.class public abstract Lcom/android/systemui/dump/DumpHandlerKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final COMMANDS:[Ljava/lang/String;

.field public static final PRIORITY_OPTIONS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "CRITICAL"

    .line 2
    .line 3
    const-string v1, "NORMAL"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/systemui/dump/DumpHandlerKt;->PRIORITY_OPTIONS:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "bugreport-critical"

    .line 12
    .line 13
    const-string v2, "bugreport-normal"

    .line 14
    .line 15
    const-string v3, "buffers"

    .line 16
    .line 17
    const-string v4, "dumpables"

    .line 18
    .line 19
    const-string v5, "config"

    .line 20
    .line 21
    const-string v6, "help"

    .line 22
    .line 23
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/systemui/dump/DumpHandlerKt;->COMMANDS:[Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method
