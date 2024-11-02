.class final Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $args:[Ljava/lang/String;

.field final synthetic $it:Lcom/android/systemui/dump/RegisteredDumpable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/dump/RegisteredDumpable;"
        }
    .end annotation
.end field

.field final synthetic $pw:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/systemui/dump/DumpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/dump/RegisteredDumpable;",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$it:Lcom/android/systemui/dump/RegisteredDumpable;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$pw:Ljava/io/PrintWriter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$args:[Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->this$0:Lcom/android/systemui/dump/DumpManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$it:Lcom/android/systemui/dump/RegisteredDumpable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$pw:Ljava/io/PrintWriter;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/dump/DumpManager$dumpTarget$1$1$1;->$args:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2, p0}, Lcom/android/systemui/dump/DumpManager;->dumpDumpable(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method
