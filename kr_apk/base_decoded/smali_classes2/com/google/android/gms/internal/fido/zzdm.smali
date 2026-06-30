.class public interface abstract annotation Lcom/google/android/gms/internal/fido/zzdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/fido/zzdk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android_log_tag"

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdm;->zza:Lcom/google/android/gms/internal/fido/zzdk;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
