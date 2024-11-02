.class Lcom/samsung/systemui/splugins/SVersionInfo$Version;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field private final mRequired:Z

.field private final mVersion:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRequired(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    .line 2
    .line 3
    div-int/lit16 p0, p0, 0x3e8

    .line 4
    .line 5
    return p0
.end method
