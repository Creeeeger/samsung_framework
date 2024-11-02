.class public final Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    return-void
.end method
