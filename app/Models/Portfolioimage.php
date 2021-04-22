<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Portfolioimage extends Model
{
    protected $table = 'portfolioimages';
    protected $fillable = [
        'portfolio_id',
        'FileName',
        'OriginalFileName',
        'URL',
    ];
    use HasFactory;
}
