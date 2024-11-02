.class public final Lcom/samsung/android/knox/custom/WidgetItem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCellX:I

.field public final mCellX_KEY:Ljava/lang/String;

.field public mCellY:I

.field public final mCellY_KEY:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public final mIntent_KEY:Ljava/lang/String;

.field public mMoreItems:I

.field public final mMoreItems_KEY:Ljava/lang/String;

.field public mParent:Ljava/lang/String;

.field public final mParent_KEY:Ljava/lang/String;

.field public mSizeX:I

.field public final mSizeX_KEY:Ljava/lang/String;

.field public mSizeY:I

.field public final mSizeY_KEY:Ljava/lang/String;

.field public mWidgetId:I

.field public final mWidgetId_KEY:Ljava/lang/String;

.field public mWidgetType:I

.field public final mmWidgetType_KEY:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/custom/WidgetItem$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/custom/WidgetItem$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/custom/WidgetItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;ILjava/lang/String;IIIII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WidgetItem"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    .line 4
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    .line 6
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 7
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    .line 8
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    .line 10
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 12
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 13
    iput p1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    .line 14
    iput-object p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    .line 15
    iput p3, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    .line 16
    iput-object p4, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    .line 17
    iput p5, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    .line 18
    iput p6, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    .line 19
    iput p7, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    .line 20
    iput p8, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    .line 21
    iput p9, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WidgetItem"

    .line 23
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->TAG:Ljava/lang/String;

    const-string v0, "WIDGET"

    .line 24
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mmWidgetType_KEY:Ljava/lang/String;

    const-string v0, "INTENT"

    .line 25
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent_KEY:Ljava/lang/String;

    const-string v0, "ID"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId_KEY:Ljava/lang/String;

    const-string v0, "PARENT"

    .line 27
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent_KEY:Ljava/lang/String;

    const-string v0, "CELLX"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX_KEY:Ljava/lang/String;

    const-string v0, "CELLY"

    .line 29
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY_KEY:Ljava/lang/String;

    const-string v0, "SIZEX"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX_KEY:Ljava/lang/String;

    const-string v0, "SIZEY"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY_KEY:Ljava/lang/String;

    const-string v0, "MORE"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems_KEY:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/WidgetItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getCellX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCellY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMoreItems()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    .line 2
    .line 3
    return p0
.end method

.method public final getParent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSizeX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSizeY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWidgetId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWidgetType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "descr:0 widgetType:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " parent:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " intent:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "intent"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mIntent:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetType:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mWidgetId:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mParent:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellX:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mCellY:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeX:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mSizeY:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/samsung/android/knox/custom/WidgetItem;->mMoreItems:I

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
