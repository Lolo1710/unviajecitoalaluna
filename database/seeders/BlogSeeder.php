<?php

namespace Database\Seeders;

use Botble\ACL\Models\User;
use Botble\Base\Models\MetaBox as MetaBoxModel;
use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Models\Category;
use Botble\Blog\Models\Post;
use Botble\Blog\Models\Tag;
use Botble\Language\Models\LanguageMeta;
use Botble\Slug\Models\Slug;
use Faker\Factory;
use Html;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use MetaBox;
use RvMedia;
use SlugHelper;

class BlogSeeder extends BaseSeeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->uploadFiles('news');
        $this->uploadFiles('categories');

        Post::truncate();
        Category::truncate();
        Tag::truncate();
        Slug::where('reference_type', Post::class)->delete();
        Slug::where('reference_type', Tag::class)->delete();
        Slug::where('reference_type', Category::class)->delete();
        MetaBoxModel::where('reference_type', Post::class)->delete();
        MetaBoxModel::where('reference_type', Tag::class)->delete();
        MetaBoxModel::where('reference_type', Category::class)->delete();
        LanguageMeta::where('reference_type', Post::class)->delete();
        LanguageMeta::where('reference_type', Tag::class)->delete();
        LanguageMeta::where('reference_type', Category::class)->delete();

        $faker = Factory::create();

        $data = [
            'en_US' => [
                [
                    'name'       => 'Uncategorized',
                    'is_default' => true,
                ],
                [
                    'name'     => 'Travel',
                    'children' => [
                        [
                            'name' => 'Guides',
                        ],
                    ],
                ],
                [
                    'name' => 'Destination',
                    'children' => [
                        [
                            'name' => 'Food',
                        ],
                    ],
                ],
                [
                    'name' => 'Hotels',
                    'children' => [
                        [
                            'name' => 'Review',
                        ],
                    ],
                ],
                [
                    'name' => 'Healthy',
                ],
                [
                    'name' => 'Lifestyle',
                ],
            ],
            'vi'    => [
                [
                    'name'       => 'Kh??ng ph??n lo???i',
                    'is_default' => true,
                ],
                [
                    'name'     => 'Du l???ch',
                    'children' => [
                        [
                            'name' => 'H?????ng d???n',
                        ],
                    ],
                ],
                [
                    'name' => '??i???m ?????n',
                    'children' => [
                        [
                            'name' => '????? ??n',
                        ],
                    ],
                ],
                [
                    'name' => 'Kh??ch s???n',
                    'children' => [
                        [
                            'name' => '????nh gi??',
                        ],
                    ],
                ],
                [
                    'name' => 'S???c kh???e',
                ],
                [
                    'name' => 'Phong c??ch s???ng',
                ],
            ],
        ];

        foreach ($data as $locale => $categories) {
            foreach ($categories as $index => $item) {
                $category = $this->createCategory(Arr::except($item, 'children'), $locale, $index, 0, $index != 0);

                if (isset($item['children']) && !empty($item['children'])) {
                    foreach ($item['children'] as $childIndex => $child) {
                        $this->createCategory($child, $locale, $index + $childIndex, $category->id);
                    }
                }
            }
        }

        $data = [
            'en_US' => [
                [
                    'name' => 'General',
                ],
                [
                    'name' => 'Design',
                ],
                [
                    'name' => 'Fashion',
                ],
                [
                    'name' => 'Branding',
                ],
                [
                    'name' => 'Modern',
                ],
            ],
            'vi'    => [
                [
                    'name' => 'Chung',
                ],
                [
                    'name' => 'Thi???t k???',
                ],
                [
                    'name' => 'Th???i trang',
                ],
                [
                    'name' => 'Th????ng hi???u',
                ],
                [
                    'name' => 'Hi???n ?????i',
                ],
            ],
        ];

        foreach ($data as $locale => $tags) {
            foreach ($tags as $index => $item) {
                $item['author_id'] = 1;
                $item['author_type'] = User::class;
                $tag = Tag::create($item);

                Slug::create([
                    'reference_type' => Tag::class,
                    'reference_id'   => $tag->id,
                    'key'            => Str::slug($tag->name),
                    'prefix'         => SlugHelper::getPrefix(Tag::class),
                ]);

                $originValue = null;

                if ($locale !== 'en_US') {
                    $originValue = LanguageMeta::where([
                        'reference_id'   => $index + 1,
                        'reference_type' => Tag::class,
                    ])->value('lang_meta_origin');
                }

                LanguageMeta::saveMetaData($tag, $locale, $originValue);
            }
        }

        $data = [
            'en_US' => [
                [
                    'name' => 'The Top 2020 Handbag Trends to Know',
                ],
                [
                    'name' => 'Top Search Engine Optimization Strategies!',
                ],
                [
                    'name' => 'Which Company Would You Choose?',
                ],
                [
                    'name' => 'Used Car Dealer Sales Tricks Exposed',
                ],
                [
                    'name' => '20 Ways To Sell Your Product Faster',
                ],
                [
                    'name' => 'The Secrets Of Rich And Famous Writers',
                ],
                [
                    'name' => 'Imagine Losing 20 Pounds In 14 Days!',
                ],
                [
                    'name' => 'Are You Still Using That Slow, Old Typewriter?',
                ],
                [
                    'name' => 'A Skin Cream That???s Proven To Work',
                ],
                [
                    'name' => '10 Reasons To Start Your Own, Profitable Website!',
                ],
                [
                    'name' => 'Simple Ways To Reduce Your Unwanted Wrinkles!',
                ],
                [
                    'name' => 'Apple iMac with Retina 5K display review',
                ],
                [
                    'name' => '10,000 Web Site Visitors In One Month:Guaranteed',
                ],
                [
                    'name' => 'Unlock The Secrets Of Selling High Ticket Items',
                ],
                [
                    'name' => '4 Expert Tips On How To Choose The Right Men???s Wallet',
                ],
                [
                    'name' => 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag',
                ],
            ],
            'vi'    => [
                [
                    'name' => 'Xu h?????ng t??i x??ch h??ng ?????u n??m 2020 c???n bi???t',
                ],
                [
                    'name' => 'C??c Chi???n l?????c T???i ??u h??a C??ng c??? T??m ki???m H??ng ?????u!',
                ],
                [
                    'name' => 'B???n s??? ch???n c??ng ty n??o?',
                ],
                [
                    'name' => 'L??? ra c??c th??? ??o???n b??n h??ng c???a ?????i l?? ?? t?? ???? qua s??? d???ng',
                ],
                [
                    'name' => '20 C??ch B??n S???n ph???m Nhanh h??n',
                ],
                [
                    'name' => 'B?? m???t c???a nh???ng nh?? v??n gi??u c?? v?? n???i ti???ng',
                ],
                [
                    'name' => 'H??y t?????ng t?????ng b???n gi???m 20 b???ng Anh trong 14 ng??y!',
                ],
                [
                    'name' => 'B???n v???n ??ang s??? d???ng m??y ????nh ch??? c??, ch???m ?????',
                ],
                [
                    'name' => 'M???t lo???i kem d?????ng da ???? ???????c ch???ng minh hi???u qu???',
                ],
                [
                    'name' => '10 L?? do ????? B???t ?????u Trang web C?? L???i nhu???n c???a Ri??ng B???n!',
                ],
                [
                    'name' => 'Nh???ng c??ch ????n gi???n ????? gi???m n???p nh??n kh??ng mong mu???n c???a b???n!',
                ],
                [
                    'name' => '????nh gi?? Apple iMac v???i m??n h??nh Retina 5K',
                ],
                [
                    'name' => '10.000 Kh??ch truy c???p Trang Web Trong M???t Th??ng: ???????c ?????m b???o',
                ],
                [
                    'name' => 'M??? kh??a B?? m???t B??n ???????c v?? Cao',
                ],
                [
                    'name' => '4 L???i khuy??n c???a Chuy??n gia v??? C??ch Ch???n V?? Nam Ph?? h???p',
                ],
                [
                    'name' => 'Sexy Clutches: C??ch Mua & ??eo T??i Clutch Thi???t k???',
                ],
            ],
        ];

        foreach ($data as $locale => $posts) {

            foreach ($posts as $index => $item) {
                $item['content'] =
                    ($index % 3 == 0 ? Html::tag('p',
                        '[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]') : '') .
                    Html::tag('p', $faker->realText(1000)) .
                    Html::tag('p',
                        Html::image(RvMedia::getImageUrl('news/' . $faker->numberBetween(1, 5) . '.jpg', 'medium'))
                            ->toHtml(), ['class' => 'text-center']) .
                    Html::tag('p', $faker->realText(500)) .
                    Html::tag('p',
                        Html::image(RvMedia::getImageUrl('news/' . $faker->numberBetween(6, 10) . '.jpg', 'medium'))
                            ->toHtml(), ['class' => 'text-center']) .
                    Html::tag('p', $faker->realText(1000)) .
                    Html::tag('p',
                        Html::image(RvMedia::getImageUrl('news/' . $faker->numberBetween(11, 14) . '.jpg', 'medium'))
                            ->toHtml(), ['class' => 'text-center']) .
                    Html::tag('p', $faker->realText(1000));
                $item['author_id'] = 1;
                $item['author_type'] = User::class;
                $item['views'] = $faker->numberBetween(100, 2500);
                $item['is_featured'] = $index < 10;
                $item['image'] = 'news/' . ($index + 1) . '.jpg';
                $item['description'] = $faker->text(200);
                $item['format_type'] = $index % 3 == 0 ? 'video' : 'default';

                $post = Post::create($item);

                $post->categories()->sync($locale == 'en_US' ? [
                    $faker->numberBetween(1, 4),
                    $faker->numberBetween(5, 7),
                ] : [$faker->numberBetween(8, 11), $faker->numberBetween(12, 14)]);

                $post->tags()->sync($locale == 'en_US' ? [1, 2, 3, 4, 5] : [6, 7, 8, 9, 10]);

                Slug::create([
                    'reference_type' => Post::class,
                    'reference_id'   => $post->id,
                    'key'            => Str::slug($post->name),
                    'prefix'         => SlugHelper::getPrefix(Post::class),
                ]);

                $originValue = null;

                if ($locale !== 'en_US') {
                    $originValue = LanguageMeta::where([
                        'reference_id'   => $index + 1,
                        'reference_type' => Post::class,
                    ])->value('lang_meta_origin');
                }

                LanguageMeta::saveMetaData($post, $locale, $originValue);
            }
        }
    }

    /**
     * @param array $item
     * @param string $locale
     * @param int $index
     * @param int $parentId
     * @param bool $isFeatured
     * @return Category|\Illuminate\Database\Eloquent\Model
     */
    protected function createCategory(array $item, string $locale, int $index, int $parentId = 0, bool $isFeatured = false)
    {
        $faker = Factory::create();

        $item['description'] = $faker->text();
        $item['author_id'] = 1;
        $item['parent_id'] = $parentId;
        $item['is_featured'] = $isFeatured;

        $category = Category::create($item);

        MetaBox::saveMetaBoxData($category, 'image', 'categories/' . ($index + 1) . '.jpg');

        Slug::create([
            'reference_type' => Category::class,
            'reference_id'   => $category->id,
            'key'            => Str::slug($category->name),
            'prefix'         => SlugHelper::getPrefix(Category::class),
        ]);

        $originValue = null;

        if ($locale !== 'en_US') {
            $originValue = LanguageMeta::where([
                'reference_id'   => $index + 1,
                'reference_type' => Category::class,
            ])->value('lang_meta_origin');
        }

        LanguageMeta::saveMetaData($category, $locale, $originValue);

        return $category;
    }
}
