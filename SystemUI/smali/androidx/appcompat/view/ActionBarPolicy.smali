.class public final Landroidx/appcompat/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/view/ActionBarPolicy;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final getMaxActionButtons()I
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 12
    .line 13
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 14
    .line 15
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 16
    .line 17
    const/16 v2, 0x258

    .line 18
    .line 19
    if-gt p0, v2, :cond_6

    .line 20
    .line 21
    if-gt v0, v2, :cond_6

    .line 22
    .line 23
    const/16 p0, 0x2d0

    .line 24
    .line 25
    const/16 v2, 0x3c0

    .line 26
    .line 27
    if-le v0, v2, :cond_0

    .line 28
    .line 29
    if-gt v1, p0, :cond_6

    .line 30
    .line 31
    :cond_0
    if-le v0, p0, :cond_1

    .line 32
    .line 33
    if-le v1, v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 p0, 0x1f4

    .line 37
    .line 38
    if-ge v0, p0, :cond_5

    .line 39
    .line 40
    const/16 p0, 0x1e0

    .line 41
    .line 42
    const/16 v2, 0x280

    .line 43
    .line 44
    if-le v0, v2, :cond_2

    .line 45
    .line 46
    if-gt v1, p0, :cond_5

    .line 47
    .line 48
    :cond_2
    if-le v0, p0, :cond_3

    .line 49
    .line 50
    if-le v1, v2, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/16 p0, 0x168

    .line 54
    .line 55
    if-lt v0, p0, :cond_4

    .line 56
    .line 57
    const/4 p0, 0x3

    .line 58
    return p0

    .line 59
    :cond_4
    const/4 p0, 0x2

    .line 60
    return p0

    .line 61
    :cond_5
    :goto_0
    const/4 p0, 0x4

    .line 62
    return p0

    .line 63
    :cond_6
    :goto_1
    const/4 p0, 0x5

    .line 64
    return p0
.end method
