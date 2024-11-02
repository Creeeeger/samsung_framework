.class public final Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final category:I

.field public final color:I

.field public final defaultOn:Z

.field public final item:Ljava/lang/String;

.field public final priority:I

.field public final range:I

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    .line 5
    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    .line 6
    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    .line 7
    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    .line 12
    iput p3, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    .line 13
    iput p4, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    .line 14
    iput p5, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    .line 20
    iput p3, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    .line 21
    iput-boolean p4, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    .line 22
    iput p5, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    .line 24
    iput p1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "item = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", category = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", range = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", versionCode = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->versionCode:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", color = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", priority = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", defaultOn = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
