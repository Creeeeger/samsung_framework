.class public final Lcom/android/app/viewcapture/data/ViewNode;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static final ALPHA_FIELD_NUMBER:I = 0xf

.field public static final CHILDREN_FIELD_NUMBER:I = 0x3

.field public static final CLASSNAME_INDEX_FIELD_NUMBER:I = 0x1

.field public static final CLIPCHILDREN_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

.field public static final ELEVATION_FIELD_NUMBER:I = 0x13

.field public static final HASHCODE_FIELD_NUMBER:I = 0x2

.field public static final HEIGHT_FIELD_NUMBER:I = 0x8

.field public static final ID_FIELD_NUMBER:I = 0x4

.field public static final LEFT_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SCALEX_FIELD_NUMBER:I = 0xd

.field public static final SCALEY_FIELD_NUMBER:I = 0xe

.field public static final SCROLLX_FIELD_NUMBER:I = 0x9

.field public static final SCROLLY_FIELD_NUMBER:I = 0xa

.field public static final TOP_FIELD_NUMBER:I = 0x6

.field public static final TRANSLATIONX_FIELD_NUMBER:I = 0xb

.field public static final TRANSLATIONY_FIELD_NUMBER:I = 0xc

.field public static final VISIBILITY_FIELD_NUMBER:I = 0x12

.field public static final WIDTH_FIELD_NUMBER:I = 0x7

.field public static final WILLNOTDRAW_FIELD_NUMBER:I = 0x10


# instance fields
.field private alpha_:F

.field private bitField0_:I

.field private children_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field

.field private classnameIndex_:I

.field private clipChildren_:Z

.field private elevation_:F

.field private hashcode_:I

.field private height_:I

.field private id_:Ljava/lang/String;

.field private left_:I

.field private scaleX_:F

.field private scaleY_:F

.field private scrollX_:I

.field private scrollY_:I

.field private top_:I

.field private translationX_:F

.field private translationY_:F

.field private visibility_:I

.field private width_:I

.field private willNotDraw_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/app/viewcapture/data/ViewNode;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/app/viewcapture/data/ViewNode;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    .line 7
    .line 8
    const-class v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->id_:Ljava/lang/String;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleX_:F

    .line 15
    .line 16
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleY_:F

    .line 17
    .line 18
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->alpha_:F

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000()Lcom/android/app/viewcapture/data/ViewNode;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public static access$100(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->classnameIndex_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$1100(Lcom/android/app/viewcapture/data/ViewNode;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 8
    .line 9
    or-int/lit8 v0, v0, 0x4

    .line 10
    .line 11
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->id_:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static access$1400(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->left_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$1600(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->top_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$1800(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->width_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$2000(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->height_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$2200(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scrollX_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$2400(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scrollY_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$2600(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->translationX_:F

    .line 8
    .line 9
    return-void
.end method

.method public static access$2800(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->translationY_:F

    .line 8
    .line 9
    return-void
.end method

.method public static access$300(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->hashcode_:I

    .line 8
    .line 9
    return-void
.end method

.method public static access$3000(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleX_:F

    .line 8
    .line 9
    return-void
.end method

.method public static access$3200(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleY_:F

    .line 8
    .line 9
    return-void
.end method

.method public static access$3400(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x2000

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->alpha_:F

    .line 8
    .line 9
    return-void
.end method

.method public static access$3600(Lcom/android/app/viewcapture/data/ViewNode;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x4000

    .line 4
    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->willNotDraw_:Z

    .line 8
    .line 9
    return-void
.end method

.method public static access$3800(Lcom/android/app/viewcapture/data/ViewNode;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    const v1, 0x8000

    .line 4
    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->clipChildren_:Z

    .line 10
    .line 11
    return-void
.end method

.method public static access$4000(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->visibility_:I

    .line 9
    .line 10
    return-void
.end method

.method public static access$4200(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 2
    .line 3
    const/high16 v1, 0x20000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    .line 7
    .line 8
    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->elevation_:F

    .line 9
    .line 10
    return-void
.end method

.method public static access$600(Lcom/android/app/viewcapture/data/ViewNode;Lcom/android/app/viewcapture/data/ViewNode;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static newBuilder()Lcom/android/app/viewcapture/data/ViewNode$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/app/viewcapture/data/ViewNode$Builder;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 22

    .line 1
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :pswitch_0
    return-object v1

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-class v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object v2, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/android/app/viewcapture/data/ViewNode;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    :cond_0
    monitor-exit v1

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    return-object v0

    .line 52
    :pswitch_3
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    .line 53
    .line 54
    return-object v0

    .line 55
    :pswitch_4
    const-string v1, "bitField0_"

    .line 56
    .line 57
    const-string v2, "classnameIndex_"

    .line 58
    .line 59
    const-string v3, "hashcode_"

    .line 60
    .line 61
    const-string v4, "children_"

    .line 62
    .line 63
    const-class v5, Lcom/android/app/viewcapture/data/ViewNode;

    .line 64
    .line 65
    const-string v6, "id_"

    .line 66
    .line 67
    const-string v7, "left_"

    .line 68
    .line 69
    const-string/jumbo v8, "top_"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v9, "width_"

    .line 73
    .line 74
    .line 75
    const-string v10, "height_"

    .line 76
    .line 77
    const-string/jumbo v11, "scrollX_"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v12, "scrollY_"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v13, "translationX_"

    .line 84
    .line 85
    .line 86
    const-string/jumbo v14, "translationY_"

    .line 87
    .line 88
    .line 89
    const-string/jumbo v15, "scaleX_"

    .line 90
    .line 91
    .line 92
    const-string/jumbo v16, "scaleY_"

    .line 93
    .line 94
    .line 95
    const-string v17, "alpha_"

    .line 96
    .line 97
    const-string/jumbo v18, "willNotDraw_"

    .line 98
    .line 99
    .line 100
    const-string v19, "clipChildren_"

    .line 101
    .line 102
    const-string/jumbo v20, "visibility_"

    .line 103
    .line 104
    .line 105
    const-string v21, "elevation_"

    .line 106
    .line 107
    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u001b\u0004\u1008\u0002\u0005\u1004\u0003\u0006\u1004\u0004\u0007\u1004\u0005\u0008\u1004\u0006\t\u1004\u0007\n\u1004\u0008\u000b\u1001\t\u000c\u1001\n\r\u1001\u000b\u000e\u1001\u000c\u000f\u1001\r\u0010\u1007\u000e\u0011\u1007\u000f\u0012\u1004\u0010\u0013\u1001\u0011"

    .line 112
    .line 113
    sget-object v2, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    .line 114
    .line 115
    new-instance v3, Lcom/google/protobuf/RawMessageInfo;

    .line 116
    .line 117
    invoke-direct {v3, v2, v1, v0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v3

    .line 121
    :pswitch_5
    new-instance v0, Lcom/android/app/viewcapture/data/ViewNode$Builder;

    .line 122
    .line 123
    invoke-direct {v0, v1}, Lcom/android/app/viewcapture/data/ViewNode$Builder;-><init>(Lcom/android/app/viewcapture/data/ViewNode$1;)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :pswitch_6
    new-instance v0, Lcom/android/app/viewcapture/data/ViewNode;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/android/app/viewcapture/data/ViewNode;-><init>()V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
