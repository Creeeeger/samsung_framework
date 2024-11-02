.class public Lcom/samsung/systemui/splugins/navigationbar/IconTheme;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;


# instance fields
.field mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/systemui/splugins/navigationbar/IconType;",
            "Lcom/samsung/systemui/splugins/navigationbar/IconResource;",
            ">;"
        }
    .end annotation
.end field

.field mThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mThemeType:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mData:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public addData(Lcom/samsung/systemui/splugins/navigationbar/IconType;Lcom/samsung/systemui/splugins/navigationbar/IconResource;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mData:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getData(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/samsung/systemui/splugins/navigationbar/IconResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/systemui/splugins/navigationbar/IconTheme;->mData:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/IconResource;

    .line 8
    .line 9
    return-object p0
.end method
