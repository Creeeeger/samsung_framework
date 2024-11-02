.class public final Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/satellite/ui/model/SatelliteIconModel;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSignalStrength(I)Lcom/android/systemui/common/shared/model/Icon$Resource;
    .locals 3

    .line 1
    const v0, 0x7f130130

    .line 2
    .line 3
    .line 4
    if-eqz p0, :cond_5

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p0, v1, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const v1, 0x7f130131

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0811f5

    .line 14
    .line 15
    .line 16
    if-eq p0, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    const v1, 0x7f13012f

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0811f6

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    if-eq p0, v0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 47
    .line 48
    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 58
    .line 59
    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 69
    .line 70
    new-instance v0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 80
    .line 81
    new-instance v1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 82
    .line 83
    invoke-direct {v1, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0811f4

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    new-instance p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 94
    .line 95
    new-instance v1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    .line 96
    .line 97
    invoke-direct {v1, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0811f3

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-object p0
.end method
