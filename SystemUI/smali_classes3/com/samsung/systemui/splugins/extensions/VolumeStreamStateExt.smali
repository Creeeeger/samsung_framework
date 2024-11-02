.class public final Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final DYNAMIC_STREAM_START_INDEX:I = 0x64

.field public static final INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRemoteStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x64

    .line 6
    .line 7
    if-lt p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
