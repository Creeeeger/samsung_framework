.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public count:I

.field public index:I

.field public final synthetic this$0:Lkotlin/collections/RingBuffer;


# direct methods
.method public constructor <init>(Lkotlin/collections/RingBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/RingBuffer;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lkotlin/collections/RingBuffer;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 11
    .line 12
    iget p1, p1, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 13
    .line 14
    iput p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final computeNext()V
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    .line 6
    .line 7
    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->state:Lkotlin/collections/State;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    .line 11
    .line 12
    iget-object v0, v0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 15
    .line 16
    aget-object v0, v0, v1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lkotlin/collections/AbstractIterator;->setNext(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    .line 22
    .line 23
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    iget v0, v0, Lkotlin/collections/RingBuffer;->capacity:I

    .line 28
    .line 29
    rem-int/2addr v1, v0

    .line 30
    iput v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 31
    .line 32
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 37
    .line 38
    :goto_0
    return-void
.end method
