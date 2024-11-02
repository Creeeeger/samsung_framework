.class public final Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mConfiguration:Landroid/content/res/Configuration;

.field public mSeqNumber:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final setConfiguration(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    const-wide/16 v0, -0x1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v2, " "

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v2, p1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_4

    .line 21
    .line 22
    aget-object v4, p1, v3

    .line 23
    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    const-string/jumbo v5, "s."

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p1, 0x2

    .line 37
    invoke-virtual {v4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v1, 0x13

    .line 46
    .line 47
    if-ge v0, v1, :cond_2

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const-wide/16 v0, -0x2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    :goto_2
    iput-wide v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 61
    .line 62
    return-void
.end method
